import 'package:flutter/material.dart';
import 'package:mobile/core/extensions/build_context_utils.dart';

import '../../../../core/styles/colors.dart';

class SearchCardSuccessTwo extends StatelessWidget {
  const SearchCardSuccessTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: context.mediaWidth * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFDEDCD9),
                    ),
                    child: Icon(
                      Icons.car_crash,
                      size: 25,
                      color: AppColors.primary,
                    ),
                  ),
                  const Column(
                    children: [
                      Text("CEP Criado"),
                      Text("76890-721")
                    ],
                  )
                ],
              ),
            ),
            const Text("Logradouro/Nome: R. Paraná, 1704 - St"),
            const Text("Bairro/Distrito: 	Jaru"),
            const Text("Localidade/UF: 	RO"),
            const Text("CEP: 76890-721"),
          ],
        ),
      ),
    );
  }
}
