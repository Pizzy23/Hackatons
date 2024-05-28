import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/styles/colors.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Container(
      height: 140,
      width: context.mediaWidth * 1.0,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey, Belluzzo",
                  style: GoogleFonts.openSans(
                      textStyle: styleModifier.whiteSemiBig),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: context.mediaWidth * 0.55,
                  child: Text(
                    "Meta de documentos scaneados 1/200",
                    style: GoogleFonts.openSans(
                        textStyle: styleModifier.whiteSmall),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: context.mediaWidth * 0.55,
                  child: Text(
                    "Dias restantes: 4 dias.",
                    style: GoogleFonts.openSans(
                        textStyle: styleModifier.whiteSmall),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                LinearPercentIndicator(
                  width: context.mediaWidth * 0.4,
                  lineHeight: 15.0,
                  percent: 0.5,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 150,
            height: 140,
            child: Image.asset('assets/model.png'),
          )
        ],
      ),
    );
  }
}
