import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static late final String authUrl;

  static void init() {
    final url = dotenv.env['API_AUTH_URL'];
    if (url == null || url.isEmpty) {
      throw Exception('❌ Missing API_AUTH_URL in .env file');
    }
    authUrl = url;
  }
}
