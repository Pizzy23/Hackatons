import 'package:app/core/controller/register_controller.dart';
import 'package:app/core/ui/appbar_custom/auth_appbar.dart';
import 'package:app/core/ui/components_global/input.dart';
import 'package:app/core/ui/extensions/build_context_utils.dart';
import 'package:app/core/ui/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../styles/colors.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: authAppBar(context, 'Bem vindo novo usuario!'),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.mediaHeight * 0.03,
                  ),
                  Input(
                    title: 'Nome',
                    label: 'Digite seu nome',
                    type: TextInputType.text,
                    controller: controller.controlName,
                  ),
                  SizedBox(
                    height: context.mediaHeight * 0.001,
                  ),
                  Input(
                    title: 'E-mail',
                    label: 'Digite o seu e-mail',
                    type: TextInputType.text,
                    controller: controller.controlEmail,
                  ),
                  SizedBox(
                    height: context.mediaHeight * 0.001,
                  ),
                  Input(
                    title: 'CPF',
                    label: 'Digite o seu CPF',
                    type: TextInputType.number,
                    controller: controller.controlCpf,
                  ),
                  SizedBox(
                    height: context.mediaHeight * 0.001,
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
                    height: context.mediaHeight * 0.001,
                  ),
                  Input(
                      title: 'Confirme a Senha',
                      label: 'Digite sua senha',
                      type: TextInputType.text,
                      secureText: true,
                      controller: controller.controlConfirmPassword,
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
                      await controller.register();
                    },
                    child: Container(
                      width: context.mediaWidth * 0.9,
                      height: context.mediaHeight * 0.06,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(12)),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        "Register",
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
                        "Ja tem uma conta??",
                        style: GoogleFonts.poppins(
                            textStyle: context.appTextStyles.textSubtitleGray),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () async {
                          await controller.register();
                        },
                        child: Text(
                          "Entrar agora",
                          style: GoogleFonts.poppins(
                              textStyle:
                                  context.appTextStyles.textAccountOrange),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
