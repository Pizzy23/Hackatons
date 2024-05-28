import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_styles.dart';
import 'package:mobile/app/module/home/presenter/widgets/button.dart';
import '../../../../../core/styles/colors.dart';
import '../../widgets/button_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  onPressed: () => Modular.to.navigate("/"),
                  icon: Icon(
                    Icons.logout,
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
                      "Bem-vindo ao CREA-SP",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.blueBig),
                    ),
                    Text(
                      "Selecione abaixo o serviço que precisa",
                      style: GoogleFonts.poppins(
                          textStyle: styleModifier.blueMedium),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ButtonHome(
                      title: 'ART',
                      onTap: () => Modular.to.navigate("art"),
                      onTapTwo: () => Modular.to.navigate("modelssavedart"),
                      button1: 'Criar ART',
                      button2: 'Modelos de ART Salvos',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ButtonHomeTwo(
                      title: 'CAT',
                      onTap: () => Modular.to.navigate('cat'),
                      button1: 'Criar CAT',
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
