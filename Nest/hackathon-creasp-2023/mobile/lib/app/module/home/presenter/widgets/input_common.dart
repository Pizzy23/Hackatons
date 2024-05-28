import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';

import '../../../../core/styles/colors.dart';

class InputCommon extends StatefulWidget {
  final String? initialValue;
  void Function()? onTap;
  final Key? keyField;
  final bool? secureText;
  final int? numbersMax;
  final TextEditingController? controller;
  final String? Function(String?)? validation;
  final TextInputType type;
  final String label;
  final double width;
  InputCommon (
      {Key? key,
        this.onTap,
        this.keyField,
        this.secureText,
        this.numbersMax,
        this.controller,
        this.validation,
        required this.type,
        required this.label,
        required this.width, this.initialValue})
      : super(key: key);

  @override
  State<InputCommon > createState() => _InputCommonState();
}

class _InputCommonState extends State<InputCommon > {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 38,
      decoration: ShapeDecoration(
        color: AppColors.onSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: TextFormField(
        initialValue: widget.initialValue,
        key: widget.keyField,
        keyboardType: widget.type,
        maxLength: widget.numbersMax,
        obscureText: widget.secureText ?? false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            border: InputBorder.none,
            hintText: widget.label,
            hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Color(0xFF716E6E),
                fontSize: 12.5,
                fontWeight: FontWeight.w400,

              ),
            )
        ),
        controller: widget.controller,
        validator: widget.validation,
      ),
    );
  }
}
