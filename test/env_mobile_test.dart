import 'package:driver_app/core/env/env_mobile.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Env mobile init', () {
    test('throws when API_AUTH_URL is missing', () async {
      await dotenv.testLoad(fileInput: 'WEBSOCKET_RIDE_SERVICE=ws://ws');
      expect(() => Env.init(), throwsException);
    });

    test('throws when WEBSOCKET_RIDE_SERVICE is missing', () async {
      await dotenv.testLoad(fileInput: 'API_AUTH_URL=http://api');
      expect(() => Env.init(), throwsException);
    });

    test('sets values when all provided', () async {
      await dotenv.testLoad(
          fileInput: 'API_AUTH_URL=http://api\nWEBSOCKET_RIDE_SERVICE=ws://ws');
      expect(() => Env.init(), returnsNormally);
    });
  });
}
