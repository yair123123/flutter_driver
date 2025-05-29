import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<AsyncValue<User?>> {
  final GetUser getUser;

  UserNotifier(this.getUser) : super(const AsyncValue.loading());

  Future<void> fetchUser(String token) async {
        state = const AsyncValue.loading();

    try {
      final user = await getUser(token);
      state = AsyncValue.data(user);
    } catch (e,st) {
      state = AsyncValue.error(e, st);
    }
  }
}
