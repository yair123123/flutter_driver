import 'package:driver_app/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<bool> validateSavedToken(String token);
  Future<String> getSavedToken();
}
