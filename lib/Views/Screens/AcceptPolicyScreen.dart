import 'package:flutter/material.dart';
import 'package:link_rich_text/link_rich_text.dart';
import 'package:munve/Constants/DataLibrary.dart';
import 'package:munve/Views/Screens/HomeScreen.dart';
import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/ButtonWidget.dart';
import '../Widgets/TextWidget.dart';

class AcceptPolicyScreen extends StatefulWidget {
  const AcceptPolicyScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AcceptPolicyScreen> createState() => _AcceptPolicyScreenState();
}

class _AcceptPolicyScreenState extends State<AcceptPolicyScreen> {
  bool isRefresh = false;
  bool _isChecked = false;
  double deviceScreenWidth = 600;
  double deviceScreenHeight = 1080;

  List<SpecialStr> specialStrs = <SpecialStr>[];

  _assignLinkTexts() {
    specialStrs.add(SpecialStr(
        text: 'User Agreement',
        type: 'user',
        style: const TextStyle(
          fontSize: 14,
          color: ColorLibrary.SecondaryColor,
          decoration: TextDecoration.underline,
        )));

    specialStrs.add(SpecialStr(
        text: '${DataLibrary.AppName} Taxi License Agreement',
        type: 'user',
        style: const TextStyle(
          fontSize: 14,
          color: ColorLibrary.SecondaryColor,
          decoration: TextDecoration.underline,
        )));

    specialStrs.add(SpecialStr(
        text: 'Privacy Policy',
        type: 'user',
        style: const TextStyle(
          fontSize: 14,
          color: ColorLibrary.SecondaryColor,
          decoration: TextDecoration.underline,
        )));

    regExpStrs.add(RegExpStr(
        text: '#\\S*? ',
        type: '#',
        style: const TextStyle(fontSize: 18, color: Colors.lightBlueAccent)));
  }

  List<RegExpStr> regExpStrs = <RegExpStr>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _assignLinkTexts();
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
                    Padding(
                        padding:
                            const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                        child: LinkRichText(
                          "By continuing, I accept the terms of the User Agreement and ${DataLibrary.AppName} Taxi License Agreement and consent to the processing of my personal information in accordance with the Privacy Policy.",
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          linkStyle: const TextStyle(
                              fontSize: 14,
                              color: ColorLibrary.SecondaryColor,
                              fontWeight: FontWeight.w500),
                          specialStrs: specialStrs,
                          regExpStrs: regExpStrs,
                          textAlign: TextAlign.center,
                          onTapSpecialStr: (String text, String type) {
                            if (text == 'User Agreement') {
                              //Preview User Agreement
                            } else if (text == 'Privacy Policy') {
                              //Preview Privacy Policy
                            } else {
                              //Preview Terms of Use
                            }
                          },
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: ColorLibrary.PrimaryColor,
                            shape: const CircleBorder(),
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            width: deviceScreenWidth - 150,
                            child: const TextWidget(
                                text:
                                    "I don't want to receive ads or other offers from this ${DataLibrary.AppName} service",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ButtonWidget(
                        width: deviceScreenWidth - 80,
                        height: 40,
                        text: "Accept",
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
                  ]))),
    );
  }
}
