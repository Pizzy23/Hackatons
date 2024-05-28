import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

import '../../../../core/styles/colors.dart';

class ButtonHome extends StatefulWidget {
  final String title;
  final String button1;
  final String button2;
  void Function()? onTap;
  void Function()? onTapTwo;
  ButtonHome(
      {Key? key,
      required this.title,
      required this.button1,
      required this.button2,
      this.onTap,
      this.onTapTwo})
      : super(key: key);

  @override
  _ButtonHomeState createState() => _ButtonHomeState();
}

class _ButtonHomeState extends State<ButtonHome> {
  bool _showContainers = false;

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _showContainers = !_showContainers;
            });
          },
          child: Container(
            alignment: Alignment.center,
            width: context.mediaWidth * 0.6,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              widget.title,
              style: GoogleFonts.poppins(
                textStyle: styleModifier.whiteSemiBig,
              ),
            ),
          ),
        ),
        Visibility(
          visible: _showContainers,
          child: Column(
            children: [
              GestureDetector(
                onTap: widget.onTap,
                child: Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: context.mediaWidth * 0.6,
                  color: AppColors.tertiary,
                  child: Text(
                    widget.button1,
                    style: GoogleFonts.poppins(
                        textStyle: styleModifier.grayMedium),
                  ),
                ),
              ),
              GestureDetector(
                onTap: widget.onTapTwo,
                child: Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: context.mediaWidth * 0.6,
                  color: AppColors.tertiary,
                  child: Text(
                    widget.button2,
                    style: GoogleFonts.poppins(
                        textStyle: styleModifier.grayMedium),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
