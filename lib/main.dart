import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/core/settings/data/data_source/settings_local_data_source.dart';
import 'package:driver_app/core/settings/data/settings_repository_impl.dart';
import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
import 'package:driver_app/features/auth/data/datasources/auth_local_datasource_mobile.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:driver_app/features/auth/data/datasources/auth_local_datasource_web.dart';
import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:driver_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:driver_app/features/main/data/data_sources/user_data_source.dart';
import 'package:driver_app/features/main/data/repositories/user_repository_impl.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:driver_app/features/main/presentation/providers/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'features/auth/data/datasources/auth_remote_datasource.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/usecases/login.dart';
import 'features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
    if (!kIsWeb) {
    await dotenv.load();
  }
  Env.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final apiLoginUrl = Env.authUrl;
    final authLocalDatasource =
        kIsWeb
            ? AuthLocalDatasourceWeb()
            : AuthLocalDatasourceMobile(const FlutterSecureStorage());
    final authRemoteDatasource = AuthRemoteDatasource(apiLoginUrl);
    final authRepository = AuthRepositoryImpl(
      authRemoteDatasource,
      authLocalDatasource,
    );
    final userDataSource = UserDataSource(apiLoginUrl);

    final userRepository = UserRepositoryImpl(userDataSource);
    final settingsRepository = SettingsRepositoryImpl(
      SettingsLocalDataSource(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:
              (_) => AuthProvider(
                Login(authRepository),
                GetSavedToken(authRepository),
                ValidateToken(authRepository),
                ClearToken(authRepository),
              ),
        ),
        ChangeNotifierProvider(
          create: (_) => UserProvider(GetUser(userRepository)),
        ),
        ChangeNotifierProvider(
          create:
              (_) => SettingsProvider(
                GetSettings(settingsRepository),
                SetSettings(settingsRepository),
              ),
        ),
      ],
      child: Consumer<SettingsProvider>(
        builder: (context, settingsProvider, chiled) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
                  locale: const Locale('he'), 
      supportedLocales: const [
        Locale('he'),
        Locale('en'), 
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
            title: "Driver App",
            home: SplashScreen(),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.teal,
                brightness: Brightness.light,
              ),
              useMaterial3: true,

              // primarySwatch: Colors.blue,
              // scaffoldBackgroundColor: Colors.white,
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.teal,
                brightness: Brightness.dark,
              ),
              // primarySwatch: Colors.blueGrey,
              // scaffoldBackgroundColor: Colors.grey[900],
            ),
            themeMode:
                settingsProvider.settings.isDarkMode
                    ? ThemeMode.dark
                    : ThemeMode.light,
          );
        },
      ),
    );
  }
}
