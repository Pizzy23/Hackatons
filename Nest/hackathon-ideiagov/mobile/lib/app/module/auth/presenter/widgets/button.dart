import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/colors.dart';
import 'package:mobile/app/core/styles/text_style.dart';

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
        alignment: Alignment.center,
        height: 36,
        width: context.mediaWidth * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primary
        ),
        child: Text(
          title,
          style: GoogleFonts.openSans(textStyle: styleModifier.whiteMedium),
        ),
      ),
    );
  }
}
