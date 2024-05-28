import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_styles.dart';

import '../../../../../../core/styles/colors.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Modular.to.navigate("home"),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: AppColors.onPrimary,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.person,
                    size: 24,
                    color: AppColors.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 125,
          flexibleSpace: Image.asset(
            'assets/minibanner.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Criar ART",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.blueBig),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
