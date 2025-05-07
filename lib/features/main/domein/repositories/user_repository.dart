
import 'package:driver_app/features/main/domein/entities/user.dart';

abstract class UserRepository {
  Future<User> getUser(String token);
}