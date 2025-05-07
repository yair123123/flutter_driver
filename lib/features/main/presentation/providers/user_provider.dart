import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final GetUser getUser;
  User? _user;
  User? get user => _user;
  UserProvider(this.getUser);

Future<void> getDetailsUser(String token) async {
  try {
    _user = await getUser(token);
    notifyListeners();
  } catch (e) {
    debugPrint("שגיאה בשליפת משתמש: $e");
  }
}

}
