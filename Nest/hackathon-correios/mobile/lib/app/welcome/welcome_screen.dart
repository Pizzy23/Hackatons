import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/core/styles/text_style.dart';

import '../../core/styles/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 360,
                height: 285,
                child: Image.asset('assets/banner.png'),
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                "Deseja buscar o CEP?",
                style: GoogleFonts.roboto(textStyle: styleModifier.blueSemiBig),
              ),
              Text(
                "Acesse nosso sistema.",
                style: GoogleFonts.roboto(textStyle: styleModifier.blueSemiBig),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate('home'),
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text("Acessar", style: GoogleFonts.roboto(
                    textStyle: styleModifier.whiteSmall
                  ),),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: Image.asset('assets/logo.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
