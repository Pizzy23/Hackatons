import 'package:flutter/material.dart';
import 'package:mobile/app/module/auth/infra/models/login_model.dart';
import 'package:mobile/app/module/auth/infra/services/login_service.dart';

class LoginController {
  final service = LoginService();

  final cpf = TextEditingController();
  final creasp = TextEditingController();
  final password = TextEditingController();

  Future auth() async {
    await service.update(
      headers: LoginModel(
        cpf.text,
        creasp.text,
        password.text,
      ),
    );
  }
}
