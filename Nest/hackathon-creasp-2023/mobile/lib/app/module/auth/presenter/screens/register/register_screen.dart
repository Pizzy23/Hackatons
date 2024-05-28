import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/colors.dart';
import 'package:mobile/app/core/styles/text_styles.dart';
import 'package:mobile/app/module/auth/presenter/screens/register/register_controller.dart';
import 'package:mobile/app/module/auth/presenter/widgets/button.dart';
import 'package:mobile/app/module/auth/presenter/widgets/input.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              Row(
                children: [
                  IconButton(
                    onPressed: () => Modular.to.navigate('/'),
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 24,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    "Register",
                    style: GoogleFonts.poppins(
                        textStyle: styleModifier.blueBigBold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Column(
                  children: [
                    Input(
                      title: 'Nome',
                      label: 'Digite seu nome',
                      type: TextInputType.text,
                      width: context.mediaWidth * 0.8,
                      controller: controller.name,
                    ),
                    Input(
                      title: 'Apelido',
                      label: 'Digite seu apelido',
                      type: TextInputType.number,
                      width: context.mediaWidth * 0.8,
                      controller: controller.nickname,
                    ),
                    Input(
                      title: 'Email',
                      label: 'Digite seu e-mail',
                      type: TextInputType.text,
                      width: context.mediaWidth * 0.8,
                      controller: controller.email,
                    ),
                    Input(
                      title: 'Celular',
                      label: 'Digite seu numero de celular',
                      type: TextInputType.number,
                      width: context.mediaWidth * 0.8,
                      controller: controller.phone,
                    ),
                    Input(
                      title: 'CPF',
                      label: 'Digite seu CPF',
                      type: TextInputType.number,
                      width: context.mediaWidth * 0.8,
                      controller: controller.cpf,
                      numbersMax: 11,
                    ),
                    Input(
                      title: 'CEP',
                      label: 'Digite seu CEP',
                      type: TextInputType.text,
                      width: context.mediaWidth * 0.8,
                      controller: controller.zip,
                      numbersMax: 8,
                    ),
                    Input(
                      title: 'Data de nascimento',
                      label: 'Digite sua data de nascimento',
                      type: TextInputType.datetime,
                      width: context.mediaWidth * 0.8,
                      controller: controller.date,
                    ),
                    Input(
                      title: 'Senha',
                      label: 'Digite sua senha',
                      type: TextInputType.text,
                      width: context.mediaWidth * 0.8,
                      controller: controller.password,
                      secureText: true,
                    ),
                    Input(
                      title: 'Confirme a senha',
                      label: 'Digite a sua confirmação da senha',
                      type: TextInputType.text,
                      width: context.mediaWidth * 0.8,
                      controller: controller.confirmPassword,
                      secureText: true,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Já tem uma conta?",
                    style:
                        GoogleFonts.poppins(textStyle: styleModifier.graySmall),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Modular.to.navigate('/');
                    },
                    child: Text(
                      "Entrar agora",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.blueSmall),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Button(title: 'Registrar', onTap: () => controller.create(),),
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
