import 'package:driver_app/features/auth/data/datasources/auth_local_datasouce.dart';
import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl  implements AuthRepository{
  final AuthRemoteDatasource remote;
  final AuthLocalDatasouce local;
  AuthRepositoryImpl(this.remote,this.local);

  @override
  Future<User> login(String email, String password) async {
    return await remote.login(email, password);
  }
  @override
  Future<bool> validateSavedToken(String token) async {
    return await remote.validateToken(token);
  }
  @override
  Future<String> getSavedToken() async {
    return await local.getToken();
  }
}