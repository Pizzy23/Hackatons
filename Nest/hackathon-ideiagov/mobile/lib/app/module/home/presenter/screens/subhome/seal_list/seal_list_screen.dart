import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_style.dart';
import 'package:mobile/app/module/home/presenter/widgets/item_seal.dart';

import '../../../../../../core/styles/colors.dart';
import '../../../widgets/build_appbar.dart';
import '../../../widgets/card_header.dart';
import '../../../widgets/icon_navegator.dart';

class SealListScreen extends StatelessWidget {
  const SealListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
          child: Column(
        children: [
          const CardHeader(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Modular.to.navigate('home'),
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: 37,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Selagens Realizadas",
                  style: GoogleFonts.openSans(
                      textStyle: styleModifier.graySemiBig),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Janeiro",
                style: GoogleFonts.openSans(textStyle: styleModifier.smallGray),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 2,
                width: context.mediaWidth * 0.6,
                decoration: BoxDecoration(color: AppColors.primary),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemSeal(),
          const SizedBox(
            height: 10,
          ),
          const ItemSeal(),
          const SizedBox(
            height: 10,
          ),
          const ItemSeal(),
          const SizedBox(
            height: 10,
          ),
          const ItemSeal(),
        ],
      )),
    );
  }
}
