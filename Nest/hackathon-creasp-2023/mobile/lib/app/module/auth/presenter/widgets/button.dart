import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

import '../../../../core/styles/colors.dart';

class Button extends StatelessWidget {
  final String title;
  void Function()? onTap;
  Button({Key? key, required this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.mediaWidth * 0.4,
        height: context.mediaHeight * 0.06,
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(12)),
        alignment: AlignmentDirectional.center,
        child: Text(
          title,
          style: GoogleFonts.poppins(textStyle: styleModifier.whiteMedium),
        ),
      ),
    );
  }
}