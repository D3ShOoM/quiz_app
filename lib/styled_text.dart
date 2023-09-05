import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 242, 206, 252),
        fontSize: 19,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
