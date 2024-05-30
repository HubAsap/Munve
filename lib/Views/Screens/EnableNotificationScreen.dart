import 'package:flutter/material.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';
import '../../Constants/ColorLibrary.dart';
import '../Widgets/TextWidget.dart';

class EnableNotificationScreen extends StatefulWidget {
  const EnableNotificationScreen({Key? key}) : super(key: key);

  @override
  State<EnableNotificationScreen> createState() => _EnableNotificationScreenState();
}

class _EnableNotificationScreenState extends State<EnableNotificationScreen> {
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
                                text: "Notifications",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextWidget(
                                text: "Notifications about the statuses and prices of your rides and deliveries will stay enabled",
                                brandedText: false,
                                foreColor: Colors.black26,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.start),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 10.0,
                              width: deviceScreenWidth,
                              color: ColorLibrary.BackgroundColorLite,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget(
                                    text: "Promotions",
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    textAlign: TextAlign.center),
                                Switcher(
                                  value: false,
                                  size: SwitcherSize.medium,
                                  switcherButtonRadius: 50,
                                  enabledSwitcherButtonRotate: true,
                                  iconOff: Icons.close,
                                  iconOn: Icons.check,
                                  colorOff: Colors.blueGrey.withOpacity(0.3),
                                  colorOn: ColorLibrary.PrimaryColor,
                                  onChanged: (bool state) {
                                    //
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1.0,
                            width: deviceScreenWidth,
                            color: ColorLibrary.BackgroundColorLite,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget(
                                    text: "New features",
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    textAlign: TextAlign.center),
                                Switcher(
                                  value: false,
                                  size: SwitcherSize.medium,
                                  switcherButtonRadius: 50,
                                  enabledSwitcherButtonRotate: true,
                                  iconOff: Icons.close,
                                  iconOn: Icons.check,
                                  colorOff: Colors.blueGrey.withOpacity(0.3),
                                  colorOn: ColorLibrary.PrimaryColor,
                                  onChanged: (bool state) {
                                    //
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1.0,
                            width: deviceScreenWidth,
                            color: ColorLibrary.BackgroundColorLite,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget(
                                    text: "Recommended rides",
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    textAlign: TextAlign.center),
                                Switcher(
                                  value: false,
                                  size: SwitcherSize.medium,
                                  switcherButtonRadius: 50,
                                  enabledSwitcherButtonRotate: true,
                                  iconOff: Icons.close,
                                  iconOn: Icons.check,
                                  colorOff: Colors.blueGrey.withOpacity(0.3),
                                  colorOn: ColorLibrary.PrimaryColor,
                                  onChanged: (bool state) {
                                    //
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1.0,
                            width: deviceScreenWidth,
                            color: ColorLibrary.BackgroundColorLite,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget(
                                    text: "Partner programs",
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    textAlign: TextAlign.center),
                                Switcher(
                                  value: false,
                                  size: SwitcherSize.medium,
                                  switcherButtonRadius: 50,
                                  enabledSwitcherButtonRotate: true,
                                  iconOff: Icons.close,
                                  iconOn: Icons.check,
                                  colorOff: Colors.blueGrey.withOpacity(0.3),
                                  colorOn: ColorLibrary.PrimaryColor,
                                  onChanged: (bool state) {
                                    //
                                  },
                                ),
                              ],
                            ),
                          ),
                        ]))))
    );
  }
}
