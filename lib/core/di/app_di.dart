// import 'package:flutter/foundation.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:driver_app/core/env/env.dart';
// import 'package:driver_app/core/settings/data/data_source/settings_local_data_source.dart';
// import 'package:driver_app/core/settings/data/settings_repository_impl.dart';
// import 'package:driver_app/core/settings/domain/use_cases/get_settings.dart';
// import 'package:driver_app/core/settings/domain/use_cases/set_settings.dart';
// import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
// import 'package:driver_app/features/auth/data/datasources/auth_local_datasource_mobile.dart';
// import 'package:driver_app/features/auth/data/datasources/auth_local_datasource_web.dart';
// import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
// import 'package:driver_app/features/auth/data/repositories/auth_repository_impl.dart';
// import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
// import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
// import 'package:driver_app/features/auth/domain/usecases/login.dart';
// import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
// import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
// import 'package:driver_app/features/main/data/data_sources/user_data_source.dart';
// import 'package:driver_app/features/main/data/repositories/user_repository_impl.dart';
// import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
// import 'package:driver_app/features/main/presentation/providers/user_provider.dart';

// class AppDI {
//   static AuthProvider getAuthProvider() {
//     final apiLoginUrl = Env.authUrl;
//     final authLocalDatasource =
//         kIsWeb
//             ? AuthLocalDatasourceWeb()
//             : AuthLocalDatasourceMobile(const FlutterSecureStorage());
//     final authRemoteDatasource = AuthRemoteDatasource(apiLoginUrl);
//     final authRepository = AuthRepositoryImpl(
//       authRemoteDatasource,
//       authLocalDatasource,
//     );
//     return AuthProvider(
//       Login(authRepository),
//       GetSavedToken(authRepository),
//       ValidateToken(authRepository),
//       ClearToken(authRepository),
//     );
//   }

//   static UserProvider getUserProvider() {
//     final apiLoginUrl = Env.authUrl;
//     final userDataSource = UserDataSource(apiLoginUrl);
//     final userRepository = UserRepositoryImpl(userDataSource);
//     return UserProvider(GetUser(userRepository));
//   }

//   static SettingsProvider getSettingsProvider() {
//     final settingsRepository = SettingsRepositoryImpl(
//       SettingsLocalDataSource(),
//     );
//     return SettingsProvider(
//       GetSettings(settingsRepository),
//       SetSettings(settingsRepository),
//     );
//   }
// }
