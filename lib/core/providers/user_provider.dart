import 'package:driver_app/features/main/data/data_sources/user_data_source.dart';
import 'package:driver_app/features/main/data/repositories/user_repository_impl.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/repositories/user_repository.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:driver_app/features/main/presentation/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDataSource = Provider<UserDataSource>((ref) {
  return UserDataSource("df");
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(ref.watch(userDataSource));
});

final getUser = Provider<GetUser>((ref) {
  return GetUser(ref.watch(userRepositoryProvider));
});

final userProvider = StateNotifierProvider<UserNotifier, AsyncValue<User?>>((ref) {
  return UserNotifier(ref.watch(getUser));
});
