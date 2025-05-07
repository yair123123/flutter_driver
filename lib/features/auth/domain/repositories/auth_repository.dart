import 'package:driver_app/features/auth/domain/entities/auth_user.dart';

abstract class AuthRepository {
  Future<AuthUser> login(String email, String password);
  Future<bool> validateSavedToken(String token);
  Future<String?> getSavedToken();
  Future<void> clearToken();
}
