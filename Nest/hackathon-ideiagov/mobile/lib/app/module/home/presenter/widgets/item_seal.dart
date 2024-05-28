import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSeal extends StatelessWidget {
  const ItemSeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          right: 125
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nucleo Familiar: XYZ",
            style: GoogleFonts.openSans(),
          ),
          Text(
            "Chefe da Familia: Belluzzo",
            style: GoogleFonts.openSans(),
          ),
          Text(
            "CAD Unico: 999.999.99-99",
            style: GoogleFonts.openSans(),
          ),
        ],
      ),
    );
  }
}
