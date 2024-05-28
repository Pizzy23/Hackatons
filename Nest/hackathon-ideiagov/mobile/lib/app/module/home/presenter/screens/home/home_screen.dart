import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_style.dart';
import 'package:mobile/app/module/auth/presenter/widgets/button.dart';
import 'package:mobile/app/module/home/presenter/widgets/build_appbar.dart';
import 'package:mobile/app/module/home/presenter/widgets/card_header.dart';
import 'package:mobile/app/module/home/presenter/widgets/filter_search.dart';
import 'package:mobile/app/module/home/presenter/widgets/icon_navegator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
          child: Column(
        children: [
          const CardHeader(),
          const SizedBox(
            height: 20,
          ),
          Button(title: 'Entrar no modo offline'),
          const SizedBox(
            height: 10,
          ),
          Button(
            title: 'Visualizar selagens realizadas',
            onTap: () => Modular.to.navigate('seallist'),
          ),
          const SizedBox(
            height: 20,
          ),
          const FilterSearch(),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 100),
            child: Text(
              "Serviços em Destaque",
              style: GoogleFonts.openSans(textStyle: styleModifier.graySemiBig),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconNavegator(
                title: 'Enviar documento',
                icon: Icons.cloud_upload_rounded,
                onTap: () => Modular.to.navigate('senddoc'),
              ),
              IconNavegator(
                title: 'Visualizar mapeamento',
                icon: Icons.map,
                onTap: () => Modular.to.navigate('viewmapping'),
              ),
              IconNavegator(
                title: 'Estatísticas gerais',
                icon: Icons.stacked_bar_chart,
                onTap: () => Modular.to.navigate('statistics'),
              ),
              IconNavegator(
                title: 'Registrar endereço',
                icon: Icons.mail,
                onTap: () => Modular.to.navigate('registeraddress'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 100),
            child: Text(
              "Tutoriais Importantes",
              style: GoogleFonts.openSans(textStyle: styleModifier.graySemiBig),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 154,
            width: 290,
            child: Image.asset('assets/banner.png'),
          ),
        ],
      )),
    );
  }
}
