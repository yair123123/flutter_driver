import 'dart:async';

import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:driver_app/features/auth/domain/entities/login_check_result.dart';
import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final GetSavedToken getSavedToken;
  final ValidateToken validateToken;
  final ClearToken clearToken;
  final Login loginUseCase;
  AuthUser? _user;
  bool _isLoading = false;

  AuthProvider(
    this.loginUseCase,
    this.getSavedToken,
    this.validateToken,
    this.clearToken,
  );
  late String? token;
  AuthUser? get user => _user;
  bool get isLoading => _isLoading;
  String? _errorMessage;
  String? get errorMessage => _errorMessage;
  String? _warnningMessage;
  String? get warnningMessage => _warnningMessage;

  void setWarnningMessage(String message) {
    _warnningMessage = message;
    notifyListeners();
  }

  Future<void> login(String username, String password) async {
    _errorMessage = null;
    try {
      _isLoading = true;
      notifyListeners();
      _user = await loginUseCase(username, password);
      if (_user != null) {
        token = _user!.jwt_token;
      } else {
        _errorMessage = "שגיאה לא ידועה";
      }
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> checkToken(String token) async {
    _errorMessage = null;

    bool isValid = await validateToken(token);
    if (isValid) {
      return true;
    }
    await clearToken();
    return false;
  }

  Future<LoginCheckResult> checkLoginWithRetry() async {
    token = await getSavedToken();
    if (token == null) {
      return LoginCheckResult.noToken;
    }

    int attempts = 0;
    const int maxAttempts = 3;
    while (attempts < maxAttempts) {
      try {
        bool isValid = await checkToken(token!);
        if (isValid) return LoginCheckResult.success;
        return LoginCheckResult.noToken;
      } catch (e) {
        attempts++;
        await Future.delayed(Duration(seconds: 5));
        setWarnningMessage("התקשורת איטית, מנסה להתחבר שוב...");
      }
    }

    return LoginCheckResult.serverError;
  }
}
