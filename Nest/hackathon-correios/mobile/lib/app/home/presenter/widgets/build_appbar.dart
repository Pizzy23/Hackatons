import 'package:flutter/material.dart';
import 'package:mobile/core/styles/colors.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.secondary,
    title: SizedBox(
      width: 137.81,
      height: 30,
      child: Image.asset('assets/logo.png'),
    ),
    actions: const [IconButton(onPressed: null, icon: Icon(Icons.logout))],
  );
}
