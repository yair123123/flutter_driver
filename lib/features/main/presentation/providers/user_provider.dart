import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  final GetUser getUser;
  late User user;
  UserProvider(this.getUser);

  Future<void> getDetailsUser(String token) async{
    user =  await getUser(token);
  }
}