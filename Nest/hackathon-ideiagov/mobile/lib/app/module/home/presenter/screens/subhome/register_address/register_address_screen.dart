import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/styles/text_style.dart';
import 'package:mobile/app/module/home/presenter/widgets/build_appbar.dart';
import 'package:mobile/app/module/home/presenter/widgets/card_with_button.dart';

import '../../../widgets/card_header.dart';

class RegisterAddressScreen extends StatelessWidget {
  const RegisterAddressScreen({Key? key}) : super(key: key);

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
                    "Registrar endereço",
                    style: GoogleFonts.openSans(
                        textStyle: styleModifier.graySemiBig),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CardWithButton(
              title: 'Facilitador localização',
              titleButton: 'Usar localização',
            ),
          ],
        ),
      ),
    );
  }
}
