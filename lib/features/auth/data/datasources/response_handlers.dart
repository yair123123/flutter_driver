import 'dart:convert';
import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
import 'package:http/http.dart' as http;
import 'package:driver_app/features/auth/domain/entities/response_auth_user.dart';



Future<AuthUser> loginResponseHandler(http.Response response) {
  final data = json.decode(response.body);

  switch(response.statusCode) {
    case 200:
      ResponseAuthUser res = ResponseAuthUser.fromJson(data);
      return Future.value(res.content!);

    case 400:
      final error = json.decode(response.body);
    return Future.error(
      error["error"] ?? "בעיה בשליחת המידע אנא פנה לשירות לקוחות",
    );

    case 401:
      final error = json.decode(response.body);
    return Future.error(error["error"] ?? "משתמש לא מורשה");

    default:
        return Future.error("שגיאה כללית בשרת (${response.statusCode})");

    }
  }
