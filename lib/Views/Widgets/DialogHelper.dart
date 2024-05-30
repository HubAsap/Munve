// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import '../../Constants/ColorLibrary.dart';
import 'TextWidget.dart';

class DialogHelper {


  static showCustomDialog(String headerText, String bodyText, cancelText, okText, BuildContext context, bool barrierDismissible) {
    showGeneralDialog(
      context: context,
      barrierLabel: "",
      barrierDismissible: barrierDismissible,
      transitionDuration: const Duration(milliseconds: 700),
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (_, __, ___) {
        return Center(
            child: Container(
              width: 300,
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 40,20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: headerText,
                              brandedText: false,
                              foreColor: ColorLibrary.TextColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.start),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: TextWidget(
                                text: bodyText,
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.start),
                          ),
                        ],),
                    ),
                    Row(children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(14, 20, 14, 0),
                          height: 60,
                          width: 150,
                          decoration: BoxDecoration(
                            color: ColorLibrary.CancelBtnColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.zero,
                            ),
                          ),child: TextWidget(
                            text: cancelText,
                            brandedText: false,
                            foreColor: ColorLibrary.BackgroundColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            textAlign: TextAlign.center),),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(14, 20, 14, 0),
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          color: ColorLibrary.OkBtnColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),child: TextWidget(
                          text: okText,
                          brandedText: false,
                          foreColor: ColorLibrary.BackgroundColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.center),),
                    ],)
                ],),
              ),
            ));
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
        }
        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }

}

