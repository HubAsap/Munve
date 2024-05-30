// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/ColorLibrary.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget(
      {Key? key,
      required this.isLoading,
      required this.width,
      required this.height,
      required this.text,
      required this.onTap,
      required this.btnBGcolor,
      required this.textColor,
      this.onHover})
      : super(key: key);

  final bool isLoading;
  final double width;
  final double height;
  final String text;
  final Color btnBGcolor;
  final Color textColor;
  final Function()? onTap;
  final Function(ValueKey bool)? onHover;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  _hover() {}
  @override
  Widget build(BuildContext context) {
    if(!widget.isLoading){
      return InkWell(
        onTap: widget.onTap,
        onHover: widget.onHover ?? _hover(),
        child: Container(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.btnBGcolor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  widget.text,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: widget.textColor,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      );
    }else{
      return const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
                ColorLibrary.PrimaryColor),
          ));
    }

  }
}
