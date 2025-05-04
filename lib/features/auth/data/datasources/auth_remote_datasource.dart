import 'dart:convert';

import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<User> login(String username, String id) async {
    try {
      final response = await http.post(
        Uri.parse("http://127.0.0.1:5000/login"),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'username': username, 'id': id}),
      );

      if (response.statusCode == 201) {
        final data = json.decode(response.body);
        return User(userName: data["username"], id: data["id"],token: data["token"]);
      } else if (response.statusCode == 403) {
        final error = json.decode(response.body);
        return Future.error(error["error"] ?? "משתמש לא מורשה");
      } else {
        return Future.error("שגיאה כללית בשרת (${response.statusCode})");
      }
    } catch (e) {
      return Future.error("שגיאת תקשורת: $e");
    }
  }
  Future<bool> validateToken(String token) async {
    final response = await http.get(Uri(host: "localhost", port: 5000,path: "api/login/check-token"));
    if (response.statusCode == 200){
      return true;
    }
    return false;
  }
}
