import 'package:flutter/material.dart';
import 'package:munve/Constants/DataLibrary.dart';

import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/TextWidget.dart';

class SupportServiceScreen extends StatefulWidget {
  const SupportServiceScreen({Key? key}) : super(key: key);

  @override
  State<SupportServiceScreen> createState() => _SupportServiceScreenState();
}

class _SupportServiceScreenState extends State<SupportServiceScreen>  {
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
                  text: "Support Service",
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
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                            child: TextWidget(
                                text: "Support Messages",
                                brandedText: false,
                                foreColor: Colors.black26,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center),
                          ),
                          GestureDetector(
                            onTap: (){
                              //Goto live chat
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                      child: Image.asset(
                                        ImageLibrary.ChatBubble,
                                        height: 25.0,
                                        width: 25.0,
                                      ),
                                    ),
                                    const TextWidget(
                                        text: "Support Chat",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: ColorLibrary.TextColorLite,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                            child: TextWidget(
                                text: "Additional Questions",
                                brandedText: false,
                                foreColor: Colors.black26,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: (){
                                //Goto live chat
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextWidget(
                                      text: "Plus points agreement",
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
                                //Goto live chat
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextWidget(
                                      text: "Subscription use",
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
                                //Goto live chat
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextWidget(
                                      text: "Subscription payment",
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
                        ]))))
    );
  }
}
