import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final GetSavedToken getSavedToken;
  final ValidateToken validateToken;
  final Login loginUseCase;
  User? _user;
  bool _is_loading = false;

  AuthProvider(this.loginUseCase,this.getSavedToken,this.validateToken);

  User? get user => _user;
  bool get is_loading => _is_loading;

  Future<void> login(String username, String password) async{
    _is_loading = true;
    notifyListeners();
    _user = await loginUseCase(username,password);
    _is_loading = false;
    notifyListeners();
  }
  Future<bool> checkToken() async {
    String token = await getSavedToken();
    if (token == Null){
      return false;
    }
    return await validateToken(token);

  }
}
