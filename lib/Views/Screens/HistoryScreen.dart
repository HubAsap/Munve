import 'package:flutter/material.dart';

import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/TextWidget.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
                                text: "Rides and orders",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center),
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
                                      text: "Filters",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.center),
                                  Icon(
                                    Icons.filter_list,
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
                          SizedBox(
                            height: deviceScreenHeight * 0.70,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding:  EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Today",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorLite,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w500,
                                          textAlign: TextAlign.center),
                                    ),
                                    Container(
                                      width: deviceScreenWidth,
                                      height: 200,
                                      margin: const EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: ColorLibrary.BackgroundColorLite, borderRadius: BorderRadius.circular(20)),
                                      child: Column(children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Padding(
                                                  padding:  EdgeInsets.only(left: 10.0, top:20.0),
                                                  child: TextWidget(
                                                      text: "Nighttime ride at 02:05",
                                                      brandedText: false,
                                                      foreColor: ColorLibrary.TextColorDark,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      textAlign: TextAlign.start),
                                                ),
                                                Padding(
                                                  padding:  EdgeInsets.only(left: 10.0, top:5.0),
                                                  child: TextWidget(
                                                      text: "Canceled",
                                                      brandedText: false,
                                                      foreColor: ColorLibrary.TextColorDark,
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w500,
                                                      textAlign: TextAlign.start),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                                              child: Image.asset(
                                                ImageLibrary.Cab,
                                                height: 35.0,
                                                width: 35.0,
                                              ),
                                            ),
                                          ],),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                                          child: Container(
                                            height: 1.0,
                                            width: deviceScreenWidth,
                                            color: ColorLibrary.TextColorDark,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ColorLibrary.BackgroundColor),
                                                  child: const Padding(
                                                    padding: EdgeInsets.all(10.0),
                                                    child: Icon(
                                                      Icons.phone,
                                                      color: ColorLibrary.TextColorLite,
                                                    ),
                                                  ),
                                                ),
                                                const Padding(
                                                  padding:  EdgeInsets.only(top:5.0),
                                                  child: TextWidget(
                                                      text: "Call driver",
                                                      brandedText: false,
                                                      foreColor: ColorLibrary.TextColorDark,
                                                      fontSize: 8,
                                                      fontWeight: FontWeight.w400,
                                                      textAlign: TextAlign.center),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(width: 20.0),
                                            Column(
                                              children: [
                                                Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ColorLibrary.BackgroundColor),
                                                  child: const Padding(
                                                    padding: EdgeInsets.all(10.0),
                                                    child: Icon(
                                                      Icons.help,
                                                      color: ColorLibrary.TextColorLite,
                                                    ),
                                                  ),
                                                ),
                                                const Padding(
                                                  padding:  EdgeInsets.only(top:5.0),
                                                  child: TextWidget(
                                                      text: "Help with order",
                                                      brandedText: false,
                                                      foreColor: ColorLibrary.TextColorDark,
                                                      fontSize: 8,
                                                      fontWeight: FontWeight.w400,
                                                      textAlign: TextAlign.center),)
                                              ],
                                            ),
                                          ],
                                        )
                                      ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Container(
                                        width: deviceScreenWidth,
                                        height: 80,
                                        margin: const EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: ColorLibrary.BackgroundColorLite, borderRadius: BorderRadius.circular(20)),
                                        child: Column(children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: 10.0, top:20.0),
                                                    child: TextWidget(
                                                        text: "Nighttime ride at 01:58",
                                                        brandedText: false,
                                                        foreColor: ColorLibrary.TextColorDark,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        textAlign: TextAlign.start),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: 10.0, top:5.0),
                                                    child: TextWidget(
                                                        text: "Canceled",
                                                        brandedText: false,
                                                        foreColor: ColorLibrary.TextColorDark,
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w500,
                                                        textAlign: TextAlign.start),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                                                child: Image.asset(
                                                  ImageLibrary.Cab,
                                                  height: 35.0,
                                                  width: 35.0,
                                                ),
                                              ),
                                            ],),
                                        ],),
                                      ),
                                    ),
                                    const Padding(
                                      padding:  EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Yesterday",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorLite,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w500,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Container(
                                        width: deviceScreenWidth,
                                        height: 80,
                                        margin: const EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: ColorLibrary.BackgroundColorLite, borderRadius: BorderRadius.circular(20)),
                                        child: Column(children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: 10.0, top:20.0),
                                                    child: TextWidget(
                                                        text: "Evening ride at 22:03",
                                                        brandedText: false,
                                                        foreColor: ColorLibrary.TextColorDark,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        textAlign: TextAlign.start),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: 10.0, top:5.0),
                                                    child: TextWidget(
                                                        text: "44AED, Marasi Dr Street 51 25 Hours",
                                                        brandedText: false,
                                                        foreColor: ColorLibrary.TextColorDark,
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w500,
                                                        textAlign: TextAlign.start),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                                                child: Image.asset(
                                                  ImageLibrary.Cab,
                                                  height: 35.0,
                                                  width: 35.0,
                                                ),
                                              ),
                                            ],),
                                        ],),
                                      ),
                                    ),
                                    const Padding(
                                      padding:  EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Friday, May 05",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorLite,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w500,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Container(
                                        width: deviceScreenWidth,
                                        height: 80,
                                        margin: const EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: ColorLibrary.BackgroundColorLite, borderRadius: BorderRadius.circular(20)),
                                        child: Column(children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: 10.0, top:20.0),
                                                    child: TextWidget(
                                                        text: "Evening ride at 22:35",
                                                        brandedText: false,
                                                        foreColor: ColorLibrary.TextColorDark,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        textAlign: TextAlign.start),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: 10.0, top:5.0),
                                                    child: TextWidget(
                                                        text: "Canceled",
                                                        brandedText: false,
                                                        foreColor: ColorLibrary.TextColorDark,
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w500,
                                                        textAlign: TextAlign.start),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                                                child: Image.asset(
                                                  ImageLibrary.Cab,
                                                  height: 35.0,
                                                  width: 35.0,
                                                ),
                                              ),
                                            ],),
                                        ],),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ]))))
    );
  }
}
