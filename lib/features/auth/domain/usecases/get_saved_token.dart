import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';

class GetSavedToken {
  final AuthRepository authRepository;
  GetSavedToken(this.authRepository);

  Future<String> call() async{
    return await authRepository.getSavedToken();
  }

}