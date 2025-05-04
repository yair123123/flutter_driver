import 'package:driver_app/core/settings/data/data_source/settings_local_data_source.dart';
import 'package:driver_app/core/settings/data/settings_repository_impl.dart';
import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
import 'package:driver_app/features/auth/data/datasources/auth_local_datasouce.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:driver_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/auth/data/datasources/auth_remote_datasource.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/usecases/login.dart';
import 'features/auth/presentation/providers/auth_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepositoryImpl(AuthRemoteDatasource(),AuthLocalDatasouce());
    final settingsRepository = SettingsRepositoryImpl(
      SettingsLocalDataSource(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(Login(authRepository),GetSavedToken(authRepository), ValidateToken(authRepository)),
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
            title: "Driver App",
            home: SplashScreen(),
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Colors.white,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.blueGrey,
              scaffoldBackgroundColor: Colors.grey[900],
            ),
            themeMode: settingsProvider.settings.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          );
        },
      ),
    );
  }
}
