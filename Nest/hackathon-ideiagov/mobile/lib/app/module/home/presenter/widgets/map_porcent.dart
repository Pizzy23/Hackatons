import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/core/extensions/build_context_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MapPorcent extends StatelessWidget {
  final String titlePorcent;
  final String title;
  const MapPorcent({Key? key, required this.title, required this.titlePorcent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
              left: 20
          ),
          child: Row(
            children: [
              Text(
                titlePorcent,
                style: GoogleFonts.openSans(),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: GoogleFonts.openSans(),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: LinearPercentIndicator(
            width: context.mediaWidth * 0.6,
            lineHeight: 25.0,
            percent: 0.5,
            trailing: const Icon(Icons.map),
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
