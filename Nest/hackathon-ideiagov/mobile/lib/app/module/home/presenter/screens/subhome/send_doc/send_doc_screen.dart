import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:mobile/app/core/styles/text_style.dart';
import 'package:mobile/app/module/home/presenter/widgets/build_appbar.dart';
import 'package:mobile/app/module/home/presenter/widgets/card_header.dart';
import 'package:mobile/app/module/home/presenter/widgets/card_with_button.dart';

import '../../../../../../core/styles/colors.dart';

class SendDocScreen extends StatelessWidget {
  const SendDocScreen({Key? key}) : super(key: key);

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
                    "Enviar Documento",
                    style: GoogleFonts.openSans(
                        textStyle: styleModifier.graySemiBig),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: SizedBox(
                width: context.mediaWidth * 0.8,
                height: 167,
                child: Image.asset('assets/mockupload.png'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CardWithButton(title: 'Facilitador Scanner', titleButton: 'Scannear')
          ],
        ),
      ),
    );
  }
}
