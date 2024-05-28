import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_style.dart';

import '../../../../core/styles/colors.dart';

class CardWithButton extends StatelessWidget {
  final String title;
  final String titleButton;
  const CardWithButton({Key? key, required this.title, required this.titleButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Container(
      width: context.mediaWidth * 1.0,
      height: 132,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.openSans(
                      textStyle: styleModifier.whiteMedium),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: 212,
                  decoration: BoxDecoration(
                    color: AppColors.onPrimary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    titleButton,
                    style: GoogleFonts.openSans(
                        textStyle: styleModifier.smallGray),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 115,
            height: 136,
            child: Image.asset('assets/girl.png'),
          )
        ],
      ),
    );
  }
}
