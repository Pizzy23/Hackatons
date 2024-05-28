import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_style.dart';

import '../../../../core/styles/colors.dart';

class IconNavegator extends StatelessWidget {
  final String title;
  final IconData? icon;
  void Function()? onTap;
  IconNavegator({Key? key, required this.title, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 80,
            height: 80,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Icon(
              icon,
              size: 40,
              color: AppColors.primary,
            ),
          ),
          SizedBox(
            width: 80,
            child: Text(
              title,
              style: GoogleFonts.openSans(textStyle: styleModifier.smallGray),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
