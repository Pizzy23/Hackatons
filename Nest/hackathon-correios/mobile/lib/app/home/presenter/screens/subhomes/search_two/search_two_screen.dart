import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/home/presenter/widgets/build_appbar.dart';
import 'package:mobile/app/home/presenter/widgets/search_card_success_two.dart';
import 'package:mobile/core/styles/colors.dart';
import 'package:mobile/core/styles/text_style.dart';


class SearchTwo extends StatelessWidget {
  const SearchTwo({Key? key}) : super(key: key);

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
                    onPressed: () => Modular.to.navigate('newcep'),
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 24,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    "Novo CEP",
                    style: GoogleFonts.roboto(
                        textStyle: styleModifier.graySemiBig),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SearchCardSuccessTwo(),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Voltar para a home",
                style: GoogleFonts.roboto(
                    textStyle: styleModifier.graySemiBig),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate('home'),
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
                    "Voltar",
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
