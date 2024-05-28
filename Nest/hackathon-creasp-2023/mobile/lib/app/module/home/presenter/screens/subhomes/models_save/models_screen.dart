import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

import '../../../../../../core/styles/colors.dart';

class ModelsSaveScreen extends StatelessWidget {
  const ModelsSaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Modular.to.navigate("home"),
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 24,
                    color: AppColors.onPrimary,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.person,
                    size: 24,
                    color: AppColors.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 125,
          flexibleSpace: Image.asset(
            'assets/minibanner.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "MODELOS SALVOS ART",
                style:
                    GoogleFonts.poppins(textStyle: styleModifier.blueBigBold),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Modelos de ARTs Salvos",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 294,
                height: 137,
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "03/08/2023 _ Gabriel Gomes 353",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF2B2B2B),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        "> ART Vinculada - 506923986",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF716E6E),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "> Individual",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF716E6E),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "> Pessoa Fisica",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF716E6E),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Modular.to.navigate('artcompleted'),
                    child: Container(
                      alignment: Alignment.center,
                      height: 23,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xFF1B2267),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Clonar",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () => Modular.to.navigate("home"),
                    child: Container(
                      alignment: Alignment.center,
                      height: 23,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFF4E21),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Apagar",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
