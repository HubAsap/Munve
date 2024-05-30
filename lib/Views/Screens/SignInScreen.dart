import 'dart:async';

import 'package:flutter/material.dart';
import 'package:munve/Constants/DataLibrary.dart';
import 'package:munve/Views/Screens/SignUpScreen.dart';
import 'package:munve/Views/Widgets/TextWidget.dart';
import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/ButtonWidget.dart';
import '../Widgets/ButtonWidget2.dart';
import '../Widgets/LogoButtonWidget.dart';
import 'AboutScreen.dart';
import 'HomeScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _userIdController;
  String _hintText = 'Enter username or email';

  bool isRefresh = false;
  double deviceScreenWidth = 600;
  double deviceScreenHeight = 1080;

  double _leftTapPadding = 4.0;
  int _selectedTab = 0;

  late Timer _timer;

  _animateTabSwitching(int tab) {
    const oneSec = Duration(milliseconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          switch (tab) {
            case 0:
              if (_leftTapPadding != 4) {
                _leftTapPadding--;
              } else {
                setState(() {
                  _selectedTab = 0;
                  _hintText = 'Enter username or email';
                });
                _timer.cancel();
              }
              break;

            case 1:
              if (_leftTapPadding < 100) {
                _leftTapPadding++;
              } else {
                setState(() {
                  _selectedTab = 1;
                  _hintText = 'Enter phone number';
                });
                _timer.cancel();
              }
              break;
          }
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userIdController = TextEditingController();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

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
            Padding(
          padding: const EdgeInsets.only(left: 10, right: 10.0),
          child: Row(
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
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: SizedBox(
              width: deviceScreenWidth,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorLibrary.BackgroundColorLite),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            ImageLibrary.AppLogo,
                            height: 35.0,
                            width: 35.0,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextWidget(
                            text: "Log in with ${DataLibrary.AppName} ID",
                            brandedText: false,
                            foreColor: ColorLibrary.TextColorDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 60,
                          width: deviceScreenWidth - 80,
                          decoration: BoxDecoration(
                              color: ColorLibrary.BackgroundColor,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: ColorLibrary.TextColorLite, width: 2)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    _leftTapPadding, 4.0, 4.0, 4.0),
                                child: Container(
                                  height: 50,
                                  width: _selectedTab == 0
                                      ? (deviceScreenWidth * 0.5) - 80
                                      : (deviceScreenWidth * 0.5),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _animateTabSwitching(0);
                                      },
                                      child: const TextWidget(
                                          text: "Mail",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          textAlign: TextAlign.center),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _animateTabSwitching(1);
                                      },
                                      child: const TextWidget(
                                          text: "Phone Number",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                        child: TextField(
                          controller: _userIdController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide:
                                      const BorderSide(color: Colors.teal)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                    color: ColorLibrary.PrimaryColor,
                                    width: 2.0),
                              ),
                              hintText: _hintText,
                              focusColor: ColorLibrary.PrimaryColor,
                              helperStyle:
                                  const TextStyle(color: Colors.redAccent),
                              suffixStyle:
                                  const TextStyle(color: Colors.green)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: ButtonWidget(
                          width: deviceScreenWidth - 80,
                          height: 40,
                          text: "Log in",
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const HomeScreen();
                            }));
                          },
                          btnBGcolor: ColorLibrary.PrimaryColor,
                          textColor: ColorLibrary.TextColorDark,
                          isLoading: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ButtonWidget2(
                          width: deviceScreenWidth - 80,
                          height: 40,
                          text: "Create ID",
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const SignUpScreen(canPopContext: false);
                            }));
                          },
                          btnBGcolor: ColorLibrary.BackgroundColor,
                          borderColor: ColorLibrary.TextColorLite,
                          textColor: ColorLibrary.TextColorDark,
                          isLoading: false,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
                        child: TextWidget(
                            text: "Log in with",
                            brandedText: false,
                            foreColor: ColorLibrary.TextColorDark,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            textAlign: TextAlign.center),
                      ),
                      SizedBox(
                        width: deviceScreenWidth - 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          LogoButtonWidget(
                            img: ImageLibrary.Apple,
                            onTap: (){
                              //Login with apple
                            },
                            btnBGcolor: ColorLibrary.BackgroundColor,
                            borderColor: Colors.black12,
                          ),
                          LogoButtonWidget(
                            img: ImageLibrary.Google,
                            onTap: (){
                              //Login with apple
                            },
                            btnBGcolor: ColorLibrary.BackgroundColor,
                            borderColor: Colors.black12,
                          ),
                          LogoButtonWidget(
                            img: ImageLibrary.Meta,
                            onTap: (){
                              //Login with apple
                            },
                            btnBGcolor: ColorLibrary.BackgroundColor,
                            borderColor: Colors.black12,
                          ),
                          LogoButtonWidget(
                            img: ImageLibrary.Twitter,
                            onTap: (){
                              //Login with apple
                            },
                            btnBGcolor: ColorLibrary.BackgroundColor,
                            borderColor: Colors.black12,
                          ),
                        ],),
                      )
                    ]),
              ))),
    );
  }
}
