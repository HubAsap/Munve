// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/ColorLibrary.dart';

class LogoButtonWidget extends StatefulWidget {
  LogoButtonWidget(
      {Key? key,
        required this.img,
        required this.onTap,
        required this.btnBGcolor,
        required this.borderColor,})
      : super(key: key);

  final double width = 50.0;
  final double height = 50.0;
  final String img;
  final Color btnBGcolor;
  final Color borderColor;
  final Function()? onTap;

  @override
  State<LogoButtonWidget> createState() => _LogoButtonWidgetState();
}

class _LogoButtonWidgetState extends State<LogoButtonWidget> {
  _hover() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.btnBGcolor,
            shape: BoxShape.circle,
            border: Border.all(color: widget.borderColor, width: 2)
        ),
        child: Image.asset(
          widget.img,
          height: widget.height * 0.8,
          width: widget.width * 0.8,
        ),
      ),
    );

  }
}
