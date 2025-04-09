import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl  implements AuthRepository{
  final AuthRemoteDatasource datasource;
  AuthRepositoryImpl(this.datasource);

  @override
  Future<User> login(String email, String password) async {
    return await datasource.login(email, password);
  }
}