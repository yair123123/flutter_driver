import 'package:driver_app/features/auth/domain/entities/auth_user.dart';

abstract class AuthRepository {
  Future<AuthUser> login(String username, String id);
  Future<bool> validateSavedToken(String token);
  Future<String?> getSavedToken();
  Future<void> clearToken();
}
