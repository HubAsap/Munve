import 'package:flutter/material.dart';
import 'package:munve/Constants/DataLibrary.dart';

import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/TextWidget.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>  {
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
              const TextWidget(
                  text: "About",
                  brandedText: false,
                  foreColor: ColorLibrary.TextColorDark,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageLibrary.AppLogoAsAppIcon,
                                height: 100.0,
                                width: 100.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                                child: TextWidget(
                                    text: "Version ${DataLibrary.AppVersion} released 1st July 2023.",
                                    brandedText: false,
                                    foreColor: Colors.black26,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.center),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextWidget(
                                    text: "Build 00001",
                                    brandedText: false,
                                    foreColor: Colors.black26,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.center),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Container(
                                  height: 10.0,
                                  width: deviceScreenWidth,
                                  color: ColorLibrary.BackgroundColorLite,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: (){
                                    //Goto license agreement
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextWidget(
                                          text: "License agreement",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorLibrary.TextColorLite,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 1.0,
                                width: deviceScreenWidth,
                                color: ColorLibrary.BackgroundColorLite,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GestureDetector(
                                  onTap: (){
                                    //Goto privacy policy
                                  },
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      TextWidget(
                                          text: "Privacy policy",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorLibrary.TextColorLite,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 1.0,
                                width: deviceScreenWidth,
                                color: ColorLibrary.BackgroundColorLite,
                              ),
                            ]),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextWidget(
                              text: "© 2022-2023 ${DataLibrary.AppName} LLC",
                              brandedText: false,
                              foreColor: Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ))))
    );
  }
}
