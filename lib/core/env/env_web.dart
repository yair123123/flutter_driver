@JS('window.env')
library;

import 'package:js/js.dart';

@JS()
external String? get API_AUTH_URL;
external String? get WEBSOCKET_RIDE_SERVICE;

class Env {
  static late final String authUrl;
  static late final String websocketUrl;

  static void init() {
    if (API_AUTH_URL == null || API_AUTH_URL!.isEmpty) {
      throw Exception('❌ Missing API_AUTH_URL in config.js');
    }
    authUrl = API_AUTH_URL!;
    if (WEBSOCKET_RIDE_SERVICE == null || WEBSOCKET_RIDE_SERVICE!.isEmpty) {
      throw Exception('❌ Missing WEBSOCKET_RIDE_SERVICE in config.js');
    }
    websocketUrl = WEBSOCKET_RIDE_SERVICE!;
  }
}
