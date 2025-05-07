import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/repositories/user_repository.dart';

class GetUser {
  final UserRepository userRepository;
  GetUser(this.userRepository);

  Future<User> call(String token) async {
    return userRepository.getUser(token);
  }
}