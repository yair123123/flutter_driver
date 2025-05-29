import 'package:driver_app/features/auth/domain/entities/auth_user.dart';

class AuthState {
  final AuthUser? user;
  final bool isLoading;
  final String? errorMessage;
  final String? warnningMessage;
  final String? token;

  AuthState({
    this.user,
    this.isLoading = false,
    this.errorMessage,
    this.warnningMessage,
    this.token,
  });
  AuthState copyWith({
    AuthUser? user,
    bool? isLoading,
    String? errorMessage,
    String? warnningMessage,
    String? token,
  }) {
    return AuthState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      warnningMessage: warnningMessage ?? this.warnningMessage,
      token: token ?? this.token,
    );
  }
}
