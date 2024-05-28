import 'package:app/core/controller/login_controller.dart';
import 'package:app/core/ui/appbar_custom/auth_appbar.dart';
import 'package:app/core/ui/components_global/input.dart';
import 'package:app/core/ui/extensions/build_context_utils.dart';
import 'package:app/core/ui/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppBar(context, 'Bem vindo novamente'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: context.mediaHeight * 0.03,
                ),
                Input(
                    title: 'E-mail',
                    label: 'Digite o seu e-mail',
                    type: TextInputType.text,
                    controller: controller.controlEmail,
                    validation: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "O valor precisa ser preenchido.";
                      }
                      return null;
                    }),
                SizedBox(
                  height: context.mediaHeight * 0.002,
                ),
                Input(
                    title: 'Senha',
                    label: 'Digite sua senha',
                    type: TextInputType.text,
                    secureText: true,
                    controller: controller.controlPassword,
                    validation: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "O valor precisa ser preenchido.";
                      }
                      return null;
                    }),
                SizedBox(
                  height: context.mediaHeight * 0.004,
                ),
                GestureDetector(
                  onTap: () async {
                    await controller.login();
                  },
                  child: Container(
                    width: context.mediaWidth * 0.9,
                    height: context.mediaHeight * 0.06,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12)),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Entrar",
                      style: GoogleFonts.poppins(
                          textStyle: context.appTextStyles.titleButton),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.mediaHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Não tem uma conta?",
                      style: GoogleFonts.poppins(
                          textStyle: context.appTextStyles.textSubtitleGray),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Modular.to.navigate('register');
                      },
                      child: Text(
                        "Crie agora",
                        style: GoogleFonts.poppins(
                            textStyle: context.appTextStyles.textAccountOrange),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
