import 'dart:convert';

import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<User> login(String username, String id) async {
    try {
      final response = await http.post(
        Uri.parse("http://127.0.0.1:5000/login"),
        body: json.encode({'username': username, 'id': id}),
      );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return User(userName: data["username"], id: data["id"]);
      }

      return Future.error("שגיאת שרת");
    } catch (e) {
      return Future.error("שגיאת תקשורת");
    }
  }
}
