import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/home/presenter/widgets/build_appbar.dart';
import 'package:mobile/app/home/presenter/widgets/input.dart';
import 'package:mobile/core/styles/text_style.dart';

import '../../../../../../core/styles/colors.dart';

class NewCepScreen extends StatelessWidget {
  const NewCepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
        appBar: buildAppBar(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Modular.to.navigate('home'),
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 24,
                        color: AppColors.primary,
                      )),
                  Text(
                    "Novo CEP",
                    style: GoogleFonts.roboto(
                        textStyle: styleModifier.graySemiBig),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Input(
                title: 'Digite o endereço',
                label: "Insira",
                type: TextInputType.text,
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate('two'),
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Gerar",
                    style:
                        GoogleFonts.roboto(textStyle: styleModifier.whiteSmall),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  width: 180,
                  height: 40,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppColors.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text(
                    "Gerar com pluscode",
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
