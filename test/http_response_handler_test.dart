import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:driver_app/core/http/http_dto.dart';
import 'package:driver_app/core/http/http_response_handler.dart';
import 'package:http/http.dart' as http;

void main() {
  group('responseHandler', () {
    test('returns content for successful response', () async {
      final body = json.encode({
        'content': 'ok',
        'success': true,
        'error': ''
      });
      final response = http.Response(body, 200);
      final result = await responseHandler<String>(
        response,
        (json) => json as String,
      );
      expect(result, equals('ok'));
    });

    test('throws message from body on 400', () async {
      final body = json.encode({'error': 'bad request'});
      final response = http.Response(body, 400);
      expect(
        () => responseHandler<String>(response, (json) => json as String),
        throwsA('bad request'),
      );
    });

    test('throws default message on missing error field', () async {
      final response = http.Response('{}', 401);
      expect(
        () => responseHandler<String>(response, (json) => json as String),
        throwsA('משתמש לא מורשה'),
      );
    });

    test('throws generic message for unexpected status', () async {
      final response = http.Response('oops', 500);
      expect(
        () => responseHandler<String>(response, (json) => json as String),
        throwsA('שגיאה כללית בשרת (500)'),
      );
    });
  });
}
