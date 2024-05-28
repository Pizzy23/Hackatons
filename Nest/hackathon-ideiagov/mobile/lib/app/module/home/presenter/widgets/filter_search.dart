import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_style.dart';

class FilterSearch extends StatelessWidget {
  const FilterSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Container(
      width: context.mediaWidth * 0.8,
      height: 48,
      decoration: ShapeDecoration(
        color: const Color(0xFFEFEFEF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "O que você está procurando?",
          style: GoogleFonts.openSans(textStyle: styleModifier.blueSmall),
        ),
      ),
    );
  }
}
