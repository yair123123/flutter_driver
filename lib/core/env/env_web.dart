@JS('window.env')
library;

import 'package:js/js.dart';

@JS()
external String? get API_AUTH_URL;

class Env {
  static late final String authUrl;

  static void init() {
    if (API_AUTH_URL == null || API_AUTH_URL!.isEmpty) {
      throw Exception('❌ Missing API_AUTH_URL in config.js');
    }
    authUrl = API_AUTH_URL!;
  }
}
