import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';

class ClearToken {
  AuthRepository repository;

  ClearToken(this.repository);

  Future<void> call() async {
    return await repository.clearToken();
  }
}