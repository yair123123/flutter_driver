import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:driver_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeAuthRepository implements AuthRepository {
  bool clearCalled = false;
  @override
  Future<void> clearToken() async {
    clearCalled = true;
  }

  bool validateResult = true;
  @override
  Future<bool> validateSavedToken(String token) async => validateResult;

  AuthUser? user;
  Exception? loginError;
  @override
  Future<AuthUser> login(String username, String id) async {
    if (loginError != null) throw loginError!;
    user = AuthUser(login_key: id, username: username, jwt_token: 'jwt');
    return user!;
  }

  String? savedToken;
  @override
  Future<String?> getSavedToken() async => savedToken;
}

class TestAuthNotifier extends AuthNotifier {
  TestAuthNotifier(
    GetSavedToken getSavedToken,
    ValidateToken validateToken,
    ClearToken clearToken,
    Login login,
  ) : super(getSavedToken, validateToken, clearToken, login);

  @override
  Future<void> checkSplashStatus() async {}
}

void main() {
  group('AuthNotifier', () {
    late FakeAuthRepository repo;
    late TestAuthNotifier notifier;

    setUp(() {
      repo = FakeAuthRepository();
      notifier = TestAuthNotifier(
        GetSavedToken(repo),
        ValidateToken(repo),
        ClearToken(repo),
        Login(repo),
      );
    });

    test('successful login updates state', () async {
      await notifier.login('u', '1');
      expect(notifier.state.user?.username, 'u');
      expect(notifier.state.token, 'jwt');
      expect(notifier.state.isLoading, isFalse);
    });

    test('login failure stores error message', () async {
      repo.loginError = Exception('fail');
      await notifier.login('u', '1');
      expect(notifier.state.errorMessage, contains('fail'));
      expect(notifier.state.isLoading, isFalse);
    });

    test('checkToken clears token when invalid', () async {
      repo.validateResult = false;
      final result = await notifier.checkToken('t');
      expect(result, isFalse);
      expect(repo.clearCalled, isTrue);
    });
  });
}
