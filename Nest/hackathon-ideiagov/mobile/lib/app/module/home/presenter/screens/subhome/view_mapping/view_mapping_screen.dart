import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_style.dart';
import 'package:mobile/app/module/home/presenter/widgets/map_porcent.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../widgets/build_appbar.dart';
import '../../../widgets/card_header.dart';

class ViewMappingScreen extends StatelessWidget {
  const ViewMappingScreen({Key? key}) : super(key: key);

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
                    "Visualizar Mapamento",
                    style: GoogleFonts.openSans(
                        textStyle: styleModifier.graySemiBig),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MapPorcent(titlePorcent: '50%', title: 'Mapeamento completo'),
            const SizedBox(
              height: 20,
            ),
            const MapPorcent(titlePorcent: '50%', title: 'Mapeamento incompleto'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 395,
              height: 228,
              child: Image.asset('assets/statistics.png'),
            )
          ],
        ),
      ),
    );
  }
}
