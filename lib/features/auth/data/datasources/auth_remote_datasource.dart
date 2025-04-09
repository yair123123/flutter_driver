import 'package:driver_app/features/auth/domain/entities/user.dart';

class AuthRemoteDatasource {
  Future<User> login(String email, String password) async {
    return User(email: email, id: "1");
  }
}