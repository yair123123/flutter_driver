import 'package:driver_app/features/main/domein/entities/user.dart';

class UserState {
  final User? user;

  UserState({this.user});
  UserState copyWith({User? user}) {
    return UserState(
      user: user ?? this.user,
    );
  }
}