import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobile/app/module/auth/presenter/widgets/button.dart';
import 'package:mobile/app/module/home/presenter/widgets/build_appbar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 374,
              width: 317.83,
              child: Image.asset('assets/welcome.png'),
            ),
            SizedBox(
              width: 208.29,
              height: 75,
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
              title: "Entrar como assistente",
              onTap: () => Modular.to.navigate('login'),
            )
          ],
        ),
      ),
    ));
  }
}
