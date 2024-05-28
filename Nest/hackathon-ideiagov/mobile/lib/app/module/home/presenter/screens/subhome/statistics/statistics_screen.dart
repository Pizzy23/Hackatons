import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_style.dart';

import '../../../widgets/build_appbar.dart';
import '../../../widgets/card_header.dart';
import '../../../widgets/card_with_button.dart';
import '../../../widgets/map_porcent.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CardHeader(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Modular.to.navigate('home'),
                      icon: const Icon(Icons.arrow_back_ios),
                      iconSize: 37,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Estatísticas gerais",
                      style: GoogleFonts.openSans(
                          textStyle: styleModifier.graySemiBig),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const MapPorcent(
                titlePorcent: '30 dias - 50%',
                title: 'Quantidade de cadastros realizados',
              ),
              const SizedBox(
                height: 10,
              ),
              const MapPorcent(
                titlePorcent: '7 dias - 50%',
                title: 'Quantidade de cadastros realizados',
              ),
              const SizedBox(
                height: 10,
              ),
              const MapPorcent(
                titlePorcent: '30 dias - 50%',
                title: 'Quantidade de cadastros realizados',
              ),
              const SizedBox(
                height: 30,
              ),
              const MapPorcent(
                titlePorcent: '30 dias - 50%',
                title: 'Quantidade de documentos scaneados',
              ),
              const SizedBox(
                height: 10,
              ),
              const MapPorcent(
                titlePorcent: '7 dias - 50%',
                title: 'Quantidade de documentos scaneados',
              ),
              const SizedBox(
                height: 10,
              ),
              const MapPorcent(
                titlePorcent: '30 dias - 50%',
                title: 'Quantidade de documentos scaneados',
              ),
              const SizedBox(
                height: 20,
              ),
              const CardWithButton(
                title: 'Precisa de ajuda?',
                titleButton: 'Contratar suporte',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
