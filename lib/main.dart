import 'package:driver_app/core/settings/data/data_source/settings_local_data_source.dart';
import 'package:driver_app/core/settings/data/settings_repository_impl.dart';
import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/auth/data/datasources/auth_remote_datasource.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/usecases/login.dart';
import 'features/auth/presentation/providers/auth_provider.dart';
import 'features/auth/presentation/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepositoryImpl(AuthRemoteDatasource());
    final settingsRepository = SettingsRepositoryImpl(SettingsLocalDataSource());
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(Login(authRepository)),
        ),
        ChangeNotifierProvider(create: (_) => 
        SettingsProvider(
          GetSettings(settingsRepository),
           SetSettings(settingsRepository))
        ),
      ],
      child: MaterialApp(
        title: "Login",
        home: LoginScreen(),
      ),
    );
  }
}
