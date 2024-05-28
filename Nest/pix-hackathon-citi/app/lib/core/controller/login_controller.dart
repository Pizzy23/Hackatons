import 'package:app/core/models/login_model.dart';
import 'package:app/core/repository/auth/service_login.dart';
import 'package:flutter/material.dart';

import '../interface/interface_request.dart';

class LoginController {
  IRequest lService = ServiceLogin();
  final controlEmail = TextEditingController();
  final controlPassword = TextEditingController();

  Future login() async {
    lService.get(
      headers: LoginModel(
        email: controlEmail.text,
        password: controlPassword.text,
      ),
    );
  }
}
