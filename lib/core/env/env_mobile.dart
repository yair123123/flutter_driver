import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static late final String authUrl;
  static late final String websocketUrl;
  static void init() {
    final authUrl = dotenv.env['API_AUTH_URL'];
    if (authUrl == null || authUrl.isEmpty) {
      throw Exception('❌ Missing API_AUTH_URL in .env file');
    }
    final websocketUrl = dotenv.env["WEBSOCKET_RIDE_SERVICE"];
    if (websocketUrl == null || websocketUrl.isEmpty) {
      throw Exception('❌ Missing WEBSOCKET_RIDE_SERVICE in .env file');
    }
  }
}
