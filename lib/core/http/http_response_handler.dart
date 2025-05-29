import 'dart:convert';
import 'package:driver_app/core/http/http_dto.dart';
import 'package:http/http.dart' as http;

Future<HttpDto> responseHandler(http.Response response) {
  final data = json.decode(response.body);

  switch (response.statusCode) {
    case 201:
      HttpDto res = HttpDto.fromJson(data);
      return Future.value(res.content!);
    case 200:
      HttpDto res = HttpDto.fromJson(data);
      return Future.value(res.content!);

    case 400:
      return Future.error(
        data["error"] ?? "בעיה בשליחת המידע אנא פנה לשירות לקוחות",
      );

    case 401:
      return Future.error(data["error"] ?? "משתמש לא מורשה");

    default:
      return Future.error("שגיאה כללית בשרת (${response.statusCode})");
  }
}
