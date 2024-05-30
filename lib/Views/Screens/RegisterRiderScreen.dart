import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/TextWidget.dart';

class RegisterRiderScreen extends StatefulWidget {
  const RegisterRiderScreen({Key? key}) : super(key: key);

  @override
  State<RegisterRiderScreen> createState() => _RegisterRiderScreenState();
}

class _RegisterRiderScreenState extends State<RegisterRiderScreen> {
  bool isRefresh = false;
  double deviceScreenWidth = 600;
  double deviceScreenHeight = 1080;

  @override
  Widget build(BuildContext context) {
    if (!isRefresh) {
      setState(() {
        deviceScreenWidth = MediaQuery.of(context).size.width;
        deviceScreenHeight = MediaQuery.of(context).size.height;
        isRefresh = true;
      });
    }
    return Scaffold(
        backgroundColor: ColorLibrary.BackgroundColor,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: ColorLibrary.BackgroundColor,
          toolbarHeight: 60,
          title: //App Bar Starts Here
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: ColorLibrary.TextColorLite,
                ),
              ),
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: SizedBox(
          height: deviceScreenHeight - 120,
          width: deviceScreenWidth,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 20.0),
                  child: TextWidget(
                      text: "Become a rider",
                      brandedText: false,
                      foreColor: ColorLibrary.TextColorDark,
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextWidget(
                      text:
                          "Upload and submit four documents for the following\n1. Drivers license\n2. Car document\n3. Utility bill\n4. Valid Id Card, and wait for our approval. \n\nThe following documents will be used to verify your identity, address, and eligibility.",
                      brandedText: false,
                      foreColor: Colors.blue,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.start),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: Container(
                    height: 10.0,
                    width: deviceScreenWidth,
                    color: ColorLibrary.BackgroundColorLite,
                  ),
                ),
                Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                ImageLibrary.File,
                                width: 25.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextWidget(
                                    text: "drivers license.jpeg",
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    textAlign: TextAlign.center),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: TextWidget(
                                text: "73.5%",
                                brandedText: false,
                                foreColor: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                textAlign: TextAlign.center),
                          ),
                        ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 40.0),
                      child: Row(
                        children: [
                          Container(
                            height: 2.0,
                            width: deviceScreenWidth * 0.735 - 30,
                            color: ColorLibrary.PrimaryColor,
                          ),
                          Container(
                            height: 2.0,
                            width: deviceScreenWidth * 0.265 - 30,
                            color: ColorLibrary.TextColorLite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 1.0,
                    width: deviceScreenWidth,
                    color: ColorLibrary.BackgroundColorLite,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            ImageLibrary.File,
                            width: 25.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextWidget(
                                text: "Utility bill.pdf",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 1.0,
                    width: deviceScreenWidth,
                    color: ColorLibrary.BackgroundColorLite,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            ImageLibrary.File,
                            width: 25.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextWidget(
                                text: "Car document.png",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 1.0,
                    width: deviceScreenWidth,
                    color: ColorLibrary.BackgroundColorLite,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: DottedBorder(
                    dashPattern: [8, 4],
                    strokeWidth: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: deviceScreenWidth,
                        height: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: ColorLibrary.BackgroundColorLite, borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorLibrary.BackgroundColor),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.upload_file,
                                    color: ColorLibrary.TextColorLite,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 80,),
                            const Padding(
                              padding:  EdgeInsets.only(top:5.0),
                              child: TextWidget(
                                  text: "tap to upload document",
                                  brandedText: false,
                                  foreColor: ColorLibrary.TextColorDark,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.center),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
