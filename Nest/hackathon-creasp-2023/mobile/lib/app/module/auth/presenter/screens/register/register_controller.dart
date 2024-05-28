import 'package:flutter/cupertino.dart';
import 'package:mobile/app/module/auth/infra/models/register_model.dart';

import '../../../infra/services/register_service.dart';

class RegisterController {
  final service = RegisterService();

  final name = TextEditingController();
  final nickname = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final cpf = TextEditingController();
  final zip = TextEditingController();
  final date = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  Future create() async {
    await service.post(
      headers: RegisterModel(
        cpf.text,
        date.text,
        email.text,
        name.text,
        phone.text,
        zip.text,
        nickname.text,
        password.text,
        confirmPassword.text,
      ),
    );
  }
}
