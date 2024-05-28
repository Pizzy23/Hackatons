import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_style.dart';

import '../../../../core/styles/colors.dart';

AppBar buildAppBar(BuildContext context) {
  final styleModifier = context.appTextStyles;
  return AppBar(
    backgroundColor: AppColors.onPrimary,
    elevation: 0,
    toolbarHeight: 80,
    leadingWidth: context.mediaWidth * 0.5,
    leading: Row(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 33,
                width: 91.65,
                child: Image.asset('assets/logo.png')
            ),
        ),
      ],
    ),
    actions: [
      const CircleAvatar(
        child: Text("B"),
      ),
      IconButton(
        onPressed: null,
        icon: Icon(
          Icons.notifications_active_outlined,
          size: 24,
          color: AppColors.secondary,
        ),
      ),
      IconButton(
        onPressed: null,
        icon: Icon(
          Icons.logout,
          size: 24,
          color: AppColors.secondary,
        ),
      ),
    ],
  );
}
