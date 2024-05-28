import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/module/auth/presenter/widgets/button.dart';
import 'package:mobile/app/module/auth/presenter/widgets/input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 208.29,
            height: 75,
            child: Image.asset('assets/logo.png'),
          ),
          const SizedBox(
            height: 35,
          ),
          const Form(
            child: Column(
              children: [
                Input(
                  title: 'E-mail',
                  label: 'Digite seu e-mail',
                  type: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10,
                ),
                Input(
                  title: 'Senha',
                  label: 'Digite sua senha',
                  type: TextInputType.text,
                  secureText: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Button(
            title: 'Entrar',
            onTap: () => Modular.to.navigate('home'),
          )
        ],
      ),
    )));
  }
}
