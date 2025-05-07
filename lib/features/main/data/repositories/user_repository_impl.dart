import 'package:driver_app/features/main/data/data_sources/user_data_source.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository{
  UserDataSource dataSource;

  UserRepositoryImpl( this.dataSource);
  Future<User> getUser(String token) async {
    return await dataSource.getUser(token);
  }
}