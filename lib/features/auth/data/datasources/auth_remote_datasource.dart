import 'dart:convert';
import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:driver_app/features/auth/domain/entities/response_auth_user.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  final String url;
  AuthRemoteDatasource(this.url);
  Future<AuthUser> login(String username, String id) async {
    try {
      final response = await http.post(
      Uri(host:url, port: 5000, path: "api/jwt/create-token"),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'username': username, 'driverid': id}),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        ResponseAuthUser res = ResponseAuthUser.fromJson(data);
        if (res.success) {
          return res.content;
        }
        return Future.error("שגיאה (${res.error})");

        
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
    final response = await http.get(
      Uri(host: "localhost", port: 5000, path: "api/login/check-token"),
      headers: {"auth": token},
    );
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
