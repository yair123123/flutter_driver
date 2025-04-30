import 'dart:convert';

import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<User> login(String username, String id) async {
    final response = await http.post(
      Uri.parse("localhost:5000/login"),
      body: json.encode({'username': username , 'id': id })
    );
    if (response.statusCode == 200){
      final data = json.decode(response.body);
      return User(userName: data["username"], id:data["id"]);
    }
    
    return User(userName: username, id: "1");
  }
}