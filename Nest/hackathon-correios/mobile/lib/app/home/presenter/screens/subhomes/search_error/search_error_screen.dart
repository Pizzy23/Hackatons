import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/home/presenter/widgets/build_appbar.dart';
import 'package:mobile/app/home/presenter/widgets/search_card_error.dart';
import 'package:mobile/core/extensions/build_context_utils.dart';
import 'package:mobile/core/styles/colors.dart';
import 'package:mobile/core/styles/text_style.dart';

import '../../../widgets/search_card_success.dart';

class SearchErrorScreen extends StatelessWidget {
  const SearchErrorScreen({Key? key}) : super(key: key);

  get icon => null;

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
        backgroundColor: AppColors.secondary,
        appBar: buildAppBar(context),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Modular.to.navigate('home'),
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 24,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    "Ultimas Buscas",
                    style: GoogleFonts.roboto(
                        textStyle: styleModifier.graySemiBig),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SearchCardError(),
              const SizedBox(
                height: 15,
              ),
              Text(
                "CEP não encontrado?",
                style: GoogleFonts.roboto(
                    textStyle: styleModifier.graySemiBig),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate('newcep'),
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
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
                    "Criar um cep",
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
