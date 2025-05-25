import 'package:driver_app/core/di/app_di.dart';
import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
import 'package:driver_app/core/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:driver_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppDI.getAuthProvider()),
        ChangeNotifierProvider(create: (_) => AppDI.getUserProvider()),
        ChangeNotifierProvider(create: (_) => AppDI.getSettingsProvider()),
      ],
      child: Consumer<SettingsProvider>(
        builder: (context, settingsProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: const Locale('he'),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            title: "דרייבר 10",
            home: const SplashScreen(),
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
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
