import 'package:driver_app/features/auth/domain/entities/auth_user.dart';

class AuthState {
  final AuthSplashStatus splashStatus;
  final AuthUser? user;
  final bool isLoading;
  final String? errorMessage;
  final String? warnningMessage;
  final String? token;

  AuthState({
    this.splashStatus  = AuthSplashStatus.loading,
    this.user,
    this.isLoading = false,
    this.errorMessage,
    this.warnningMessage,
    this.token,
  });
  AuthState copyWith({
    AuthSplashStatus? splashStatus,
    AuthUser? user,
    bool? isLoading,
    String? errorMessage,
    String? warnningMessage,
    String? token,
  }) {
    return AuthState(
      splashStatus: splashStatus ?? this.splashStatus,
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      warnningMessage: warnningMessage ?? this.warnningMessage,
      token: token ?? this.token,
    );
  }
}

enum AuthSplashStatus {
  loading,
  success,
  needLogin,
  error,
}
