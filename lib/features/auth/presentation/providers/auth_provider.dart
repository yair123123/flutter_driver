import 'dart:async';

import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
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
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> checkToken() async {
    _errorMessage = null;

    try {
      String? token = await getSavedToken();
      if (token == null) {
        return false;
      }
      bool isValid = await validateToken(token);
      if (!isValid) {
        clearToken();
        return false;
      }
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> checkLoginWithRetry() async {
    int attempts = 0;
    const int maxAttempts = 3;
    while (attempts < maxAttempts) {
      bool isLoggedIn = await checkToken();
      if (isLoggedIn == true) {
        return true;
      }
      attempts++;
      await Future.delayed(Duration(seconds: 5));
      setWarnningMessage("התקשורת איטית החיבור מתעכב");
    }
    return false;
  }
}
