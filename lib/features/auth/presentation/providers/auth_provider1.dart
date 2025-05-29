import 'package:driver_app/features/auth/domain/entities/login_check_result.dart';
import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final GetSavedToken getSavedToken;
  final ValidateToken validateToken;
  final ClearToken clearToken;
  final Login loginUseCase;

  AuthNotifier(
    this.getSavedToken,
    this.validateToken,
    this.clearToken,
    this.loginUseCase,
  ) : super(AuthState());

  void setWarnningMessage(String message) {
    state = state.copyWith(warnningMessage: message);
  }

  Future<void> login(String username, String id) async {
    state = state.copyWith(errorMessage: null, isLoading: true);
    try {
      final user = await loginUseCase(id, username);
      state = state.copyWith(
        user: user,
        token: user.jwt_token,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
    }
  }

  Future<bool> checkToken(String token) async {
    state = state.copyWith(errorMessage: null);
    bool isValid = await validateToken(token);
    if (isValid) {
      return true;
    }
    await clearToken();
    return false;
  }

  Future<LoginCheckResult> checkLoginWithRetry() async {
    final token = await getSavedToken();
    state = state.copyWith(token: token);
    if (token == null) {
      return LoginCheckResult.noToken;
    }
    int attempts = 0;
    const int maxAttempts = 3;
    while (attempts < maxAttempts) {
      try {
        bool isValid = await validateToken(token);
        if (isValid) {
          return LoginCheckResult.noToken;
        }
      } catch (e) {
        attempts++;
        await Future.delayed(Duration(minutes: 5));
        state = state.copyWith(
          warnningMessage: "התקשורת איטית, מנסה להתחבר שוב...",
        );
      }
    }
    return LoginCheckResult.serverError;
  }
}
