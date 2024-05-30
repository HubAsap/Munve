import 'package:flutter/material.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';
import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/TextWidget.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
                  text: "Edit",
                  brandedText: false,
                  foreColor: ColorLibrary.TextColorDark,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center),
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
                                text: "Payment methods",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget(
                                    text: "Spend bonus on rides",
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
                                Row(
                                  children: [
                                    Image.asset(
                                      ImageLibrary.ApplePay,
                                      width: 25.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Apple Pay",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  isChecked: true,
                                  uncheckedWidget: const Icon(Icons.close),
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
                                Row(
                                  children: [
                                    Image.asset(
                                      ImageLibrary.Visa,
                                      width: 25.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Visa • 5433",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  isChecked: true,
                                  uncheckedWidget: const Icon(Icons.close),
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
                                Row(
                                  children: [
                                    Image.asset(
                                      ImageLibrary.Visa,
                                      width: 25.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Visa • 4088",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedWidget: const Icon(Icons.close),
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
                                Row(
                                  children: [
                                    Image.asset(
                                      ImageLibrary.Visa,
                                      width: 25.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Visa • 8609",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedWidget: const Icon(Icons.close),
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
                            child: GestureDetector(
                              onTap: (){
                                //Goto live chat
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextWidget(
                                      text: "Add card",
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
                                Row(
                                  children: [
                                    Image.asset(
                                      ImageLibrary.Cash,
                                      width: 25.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextWidget(
                                          text: "Cash",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedWidget: const Icon(Icons.close),
                                ),
                              ],
                            ),
                          ),
                        ]))))
    );
  }
}
