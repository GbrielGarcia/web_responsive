import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsViews extends StatelessWidget {
  const SkillsViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[600],
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Skills',
            style: GoogleFonts.montserratAlternates(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
