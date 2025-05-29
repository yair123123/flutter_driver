import 'dart:convert';
import 'package:driver_app/core/http/http_response_handler.dart';
import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:http/http.dart' as http;


class AuthRemoteDatasource {
  final String url;
  AuthRemoteDatasource(this.url);
  Future<AuthUser> login(String username, String id) async {
    try {
      final response = await http.post(
        Uri.http(url, 'api/jwt/create-token'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'username': username, 'driver_key': id}),
      );
      return responseHandler(response);
    } catch (e) {
      return Future.error("שגיאת תקשורת: $e");
    }
  }

  Future<bool> validateToken(String token) async {
    final response = await http.get(
      Uri.http(url, "api/jwt/verify"),
      headers: {'Content-Type': 'application/json', "auth": token},
    );
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
