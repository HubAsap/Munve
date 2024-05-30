// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, file_names

import 'dart:async';

import 'package:flutter/material.dart';
import '../../Constants/ColorLibrary.dart';
import '../../Constants/DataLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../../Functions/SharedPreferenceHelper.dart';
import '../Widgets/TextWidget.dart';
import 'SignUpScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  late String themeMode = 'LightMode';
  late String languageMode = 'en';
  late String usedApp = '';
  late String userEmail = '';
  late String uuid = '';
  double _paddingTop = 80;
  double _containerHeight = 100;

  late Timer _timer;

  _animateRoad() {
    const oneSec = Duration(milliseconds: 5);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (_paddingTop != 0) {
            _paddingTop--;
          } else if (_paddingTop == 0 && _containerHeight != 0) {
            _containerHeight--;
          } else {
            _paddingTop = 80;
            _containerHeight = 100;
          }
        });
      },
    );
  }

  setPrefs() {
    //Sets the background color via the saved theme of the device
    SharedPreferenceHelper.loadPref('ThemeMode').then((value) {
      setState(() {
        if (value == '') {
          themeMode = 'LightMode';
        } else {
          themeMode = value;
        }
      });
    });

    SharedPreferenceHelper.loadPref('LanguageMode').then((value) {
      setState(() {
        if (value == '') {
          languageMode = 'en';
        } else {
          languageMode = value;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    _animateRoad();
    setPrefs();
    //Delay On Splash Screen.
    Future.delayed(Duration(seconds: 10), () async {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return SignUpScreen(canPopContext: false);
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: ColorLibrary.TextColor,
        body: Padding(
          padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  width: DataLibrary.DeviceWidth(context),
                  height: DataLibrary.DeviceHeight(context) + 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: _paddingTop),
                        child: Container(
                          height: _containerHeight,
                          width: 50,
                          color: ColorLibrary.PrimaryColorFaded,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          height: 100,
                          width: 50,
                          color: ColorLibrary.PrimaryColorFaded,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          height: 100,
                          width: 50,
                          color: ColorLibrary.PrimaryColorFaded,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          height: 100,
                          width: 50,
                          color: ColorLibrary.PrimaryColorFaded,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          height: 100,
                          width: 50,
                          color: ColorLibrary.PrimaryColorFaded,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          height: 100,
                          width: 50,
                          color: ColorLibrary.PrimaryColorFaded,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorLibrary.BackgroundColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageLibrary.AppLogo,
                            height: 100.0,
                            width: 100.0,
                          ),
                          TextWidget(
                              text: DataLibrary.AppName,
                              brandedText: true,
                              foreColor: ColorLibrary.SecondaryColor,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                      child: const Positioned(
                          bottom: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: TextWidget(
                                text: "Version ${DataLibrary.AppVersion}",
                                brandedText: false,
                                foreColor: ColorLibrary.PrimaryColorLite,
                                fontSize: 11,
                                fontWeight: FontWeight.normal,
                                textAlign: TextAlign.center),
                          )),
                    )
                  ]),
            ],
          ),
        ));
  }
}
