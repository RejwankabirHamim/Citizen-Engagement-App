import 'dart:convert';
import 'package:ecosync_app/config/app_config.dart';
import 'package:ecosync_app/data/model/user.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  final String firstName;
  final String lastName;
  final String wardNumber;
  final String latitude;
  final String longitude;
  final String email;
  final String password;

  RegisterService(
    this.firstName,
    this.lastName,
    this.wardNumber,
    this.latitude,
    this.longitude,
    this.email,
    this.password,
  );

  void call() async {
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'first_name': firstName,
        'last_name': lastName,
        'ward_number': wardNumber,
        'latitude': latitude,
        'longitude': longitude,
        'email': email,
        'password': password,
      }),
    );

  }
}
