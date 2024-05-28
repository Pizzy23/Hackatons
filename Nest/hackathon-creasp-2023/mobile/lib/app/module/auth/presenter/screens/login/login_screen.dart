import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/colors.dart';
import 'package:mobile/app/core/styles/text_styles.dart';
import 'package:mobile/app/module/auth/presenter/screens/login/login_controller.dart';
import 'package:mobile/app/module/auth/presenter/widgets/button.dart';
import 'package:mobile/app/module/auth/presenter/widgets/input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/banner.png'),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 264,
                height: 60,
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Login",
                style: GoogleFonts.poppins(textStyle: styleModifier.blueBigBold),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                child: Column(
                  children: [
                    Input(
                      title: 'CPF',
                      label: 'Digite seu CPF',
                      type: TextInputType.number,
                      width: context.mediaWidth * 0.8,
                      numbersMax: 11,
                      controller: controller.cpf,
                    ),
                    Input(
                      title: 'CREASP',
                      label: 'Digite seu CREASP',
                      type: TextInputType.number,
                      width: context.mediaWidth * 0.8,
                      numbersMax: 10,
                      controller: controller.creasp,
                    ),
                    Input(
                      title: 'Senha',
                      label: 'Digite sua senha',
                      type: TextInputType.text,
                      width: context.mediaWidth * 0.8,
                      secureText: true,
                      controller: controller.password,
                    ),
                  ],
                ),
              ),
              Button(title: 'Entrar', onTap: () => controller.auth(),),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate('home'),
                child: Text(
                  "Não tem uma conta? Crie agora",
                  style:
                  GoogleFonts.poppins(textStyle: const TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: context.mediaWidth * 1.0,
                height: context.mediaHeight * 0.125,
                color: AppColors.primary,
              ),
              const SizedBox(
                height: 15,
              ),
        ],
          ),
      ),
      ),
    );
  }
}