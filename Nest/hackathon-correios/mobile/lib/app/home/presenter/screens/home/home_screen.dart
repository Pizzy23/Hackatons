import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/home/presenter/widgets/build_appbar.dart';
import 'package:mobile/app/home/presenter/widgets/input.dart';
import 'package:mobile/core/styles/text_style.dart';

import '../../../../../core/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    final cepController = TextEditingController();
    return Scaffold(
        appBar: buildAppBar(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Buscar CEP",
                style: GoogleFonts.roboto(textStyle: styleModifier.graySemiBig),
              ),
              const SizedBox(
                height: 15,
              ),
              Input(
                title: 'Digite um cep ou um endereço',
                label: "Insira",
                type: TextInputType.text,
                controller: cepController,
              ),
              const SizedBox(
                height: 5,
              ),
              const Input(
                title: 'CEP de:',
                label: "Todos",
                type: TextInputType.text,
              ),
              GestureDetector(
                onTap: () {
                  if (cepController.text == "53407-512") {
                    Modular.to.navigate("searchlist");
                  } else {
                    Modular.to.navigate('error');
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppColors.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text(
                    "Buscar",
                    style:
                        GoogleFonts.roboto(textStyle: styleModifier.whiteSmall),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
