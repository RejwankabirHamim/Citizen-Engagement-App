import 'package:ecosync_app/data/model/user.dart';
import 'package:ecosync_app/data/service/register_service.dart';
import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  var username = '';
  var email = '';
  var password = '';

  Future<User> register() async {
    final response = await RegisterService(username, email, password).call();
    return response;
  }
}
