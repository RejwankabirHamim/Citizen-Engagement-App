import 'package:ecosync_app/data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:ecosync_app/data/service/register_service.dart';

class RegisterProvider extends ChangeNotifier {
  String firstName = '';
  String lastName = '';
  String wardNumber = '';
  String latitude = '';
  String longitude = '';
  String email = '';
  String password = '';

  void register() {
   RegisterService(
      firstName,
      lastName,
      wardNumber,
      latitude,
      longitude,
      email,
      password,
    ).call();
  }
}
