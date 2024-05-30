// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color foreColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final bool brandedText;

  const TextWidget(
      {Key? key,
      required this.text,
      required this.foreColor,
      required this.fontSize,
      required this.fontWeight,
      required this.brandedText,
      required this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: brandedText ? TextStyle(
        fontFamily: "Anahaw",
        fontSize: fontSize,
        color: foreColor,
        fontWeight: fontWeight,
      ) :GoogleFonts.montserrat(
        fontSize: fontSize,
        color: foreColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
