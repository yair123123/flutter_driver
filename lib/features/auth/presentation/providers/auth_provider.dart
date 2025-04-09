import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final Login loginUseCase;
  User? _user;
  bool _is_loading = false;

  AuthProvider(this.loginUseCase);

  User? get user => _user;
  bool get is_loading => _is_loading;

  Future<void> login(String email, String password) async{
    _is_loading = true;
    notifyListeners();
    _user = await loginUseCase(email,password);
    _is_loading = false;
    notifyListeners();
  }
}
