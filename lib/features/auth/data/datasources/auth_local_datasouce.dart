import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDatasource {
  final FlutterSecureStorage storage;

  AuthLocalDatasource(this.storage);

  Future<void> saveToken(String token) async {
    await storage.write(key: "jwt", value: token);
  }

  Future<String?> getToken() async {
    return await storage.read(key: "jwt");
  }

  Future<void> clearToken() async {
    await storage.delete(key: "jwt");
  }
}
