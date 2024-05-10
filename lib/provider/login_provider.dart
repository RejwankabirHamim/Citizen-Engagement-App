import 'package:flutter/material.dart';
import 'package:ecosync_app/data/response/login_response.dart';
import 'package:ecosync_app/data/service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';

  Future<LoginResponse> login() async {
    return LoginService(username, password).call();
  }
  
}
