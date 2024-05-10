import 'dart:convert';

import 'package:ecosync_app/config/app_config.dart';
import 'package:ecosync_app/data/model/user.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  final String username;
  final String email;
  final String password;

  RegisterService(this.username, this.email, this.password);

  Future<User> call() async {
    final result = await http.post(Uri.parse('${AppConfig.baseUrl}/register'),
        body: jsonEncode({
          'username': username,
          'email': email,
          'password': password,
        }));
    if (result.statusCode == 200) {
      return User.fromJson(jsonDecode(result.body)['data']);
    } else {
      throw Exception('Registration failed'); // Handle errors appropriately
    }
  }
}
