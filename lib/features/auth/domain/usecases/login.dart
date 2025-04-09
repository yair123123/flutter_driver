import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';

class Login {
  final AuthRepository authRepository;
  Login(this.authRepository);

  Future<User> call(String email ,String password) async{
    return await authRepository.login(email, password);
  }

}