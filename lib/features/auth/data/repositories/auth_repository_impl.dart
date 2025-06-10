import 'package:driver_app/features/auth/data/datasources/auth_class_datasource.dart';
import 'package:driver_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl  implements AuthRepository{
  final AuthRemoteDatasource remote;
  final AuthLocalDatasource local;
  AuthRepositoryImpl(this.remote,this.local);

  @override
  Future<AuthUser> login(String username, String id) async {

    AuthUser user =  await remote.login(username, id);
    local.saveToken(user.jwt_token);
    return user;
  }
  @override
  Future<bool> validateSavedToken(String token) async {
    return await remote.validateToken(token);
  }
  @override
  Future<String?> getSavedToken() async {
    return await local.getToken();
  }
  @override
  Future<void> clearToken() async {
    return await local.clearToken();
  }
}