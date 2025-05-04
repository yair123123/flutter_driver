import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';

class ValidateToken {
  final AuthRepository repository;
  ValidateToken(this.repository);

  Future<bool> call(String token) => repository.validateSavedToken(token);
}