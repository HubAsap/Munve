import 'package:flutter/material.dart';
import 'package:munve/Views/Screens/AboutScreen.dart';
import 'package:munve/Views/Screens/EnableNotificationScreen.dart';
import 'package:munve/Views/Screens/HistoryScreen.dart';
import 'package:munve/Views/Screens/RegisterRiderScreen.dart';
import 'package:munve/Views/Screens/SavedPlacesScreen.dart';
import 'package:munve/Views/Screens/SupportServiceScreen.dart';
import 'package:munve/Views/Widgets/DialogHelper.dart';
import '../../Constants/ColorLibrary.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/TextWidget.dart';
import 'PaymentMethodScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();

  bool isRefresh = false;
  double deviceScreenWidth = 600;
  double deviceScreenHeight = 1080;

  final String _username = "mrnicholas";
  final String _phoneNumber = "+375 25 723-12-22";
  final String _bankCardDetails = "Visa • 5433";



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
        body: SliderDrawer(
            appBar: const SliderAppBar(
                appBarColor: Colors.white,
                title: Text("",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
            key: _sliderDrawerKey,
            sliderOpenSize: deviceScreenWidth * 0.75,
            //Nav Menu
            slider: SingleChildScrollView(
                child: SizedBox(
                    width: deviceScreenWidth,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 80.0, left: 10.0, right: 20.0),
                        child: Container(
                          width: deviceScreenWidth * 0.8,
                          color: ColorLibrary.BackgroundColor,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                    text: _username,
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start),
                                TextWidget(
                                    text: _phoneNumber,
                                    brandedText: false,
                                    foreColor: Colors.black26,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return const EnableNotificationScreen();
                                      }));
                                    },
                                    child: const TextWidget(
                                        text: "Enable notifications",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return const EnableNotificationScreen();
                                      }));
                                    },
                                    child: const TextWidget(
                                        text:
                                            "You can track the statuses of your rides and deliveries and select only those notifications you need",
                                        brandedText: false,
                                        foreColor: Colors.black26,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const PaymentMethodScreen();
                                    }));
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20.0),
                                            child: TextWidget(
                                                text: "Payment methods",
                                                brandedText: false,
                                                foreColor:
                                                    ColorLibrary.TextColorDark,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                textAlign: TextAlign.start),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: TextWidget(
                                                text: _bankCardDetails,
                                                brandedText: false,
                                                foreColor: Colors.black26,
                                                fontSize: 11,
                                                fontWeight: FontWeight.normal,
                                                textAlign: TextAlign.start),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20.0),
                                        child: Image.asset(
                                          ImageLibrary.Visa,
                                          width: 25.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 40.0),
                                  child: TextWidget(
                                      text: "Gifts and discounts",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.start),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: TextWidget(
                                      text: "Enter promo code",
                                      brandedText: false,
                                      foreColor: Colors.black26,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      textAlign: TextAlign.start),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const SavedPlacesScreen();
                                    }));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 40.0),
                                    child: TextWidget(
                                        text: "Favorite places",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                          return const HistoryScreen();
                                        }));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 40.0),
                                    child: TextWidget(
                                        text: "History",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const SupportServiceScreen();
                                    }));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 40.0),
                                    child: TextWidget(
                                        text: "Support",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const AboutScreen();
                                    }));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 40.0),
                                    child: TextWidget(
                                        text: "Info",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                          return const RegisterRiderScreen();
                                        }));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 40.0),
                                    child: TextWidget(
                                        text: "Bonus Screen",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    DialogHelper.showCustomDialog("Sure you want to leave?", "Your account will be saved on this device.", "Close", "Log Out", context, true);
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 40.0),
                                    child: TextWidget(
                                        text: "Log Out",
                                        brandedText: false,
                                        foreColor: ColorLibrary.TextColorDark,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        textAlign: TextAlign.start),
                                  ),
                                ),
                              ]),
                        )))),
            //Map
            child: DraggableBottomSheet(
              minExtent: 300,
              barrierDismissible: true,
              useSafeArea: false,
              curve: Curves.easeIn,
              previewWidget: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Container(
                  height: 400,
                  width: deviceScreenWidth - 10,
                  decoration: const BoxDecoration(
                    color: ColorLibrary.BackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                      height: 5,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: ColorLibrary.BackgroundColorLite,
                        borderRadius: BorderRadius.all(Radius.circular(20.0),
                        ),
                      ),),
                    ),
                    const TextWidget(
                        text: "Arriving in ~2 min",
                        brandedText: false,
                        foreColor: ColorLibrary.TextColorDark,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.start),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextWidget(
                              text: "White Lexus ES",
                              brandedText: false,
                              foreColor: ColorLibrary.TextColorDark,
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              textAlign: TextAlign.start),
                          const SizedBox(width: 5,),
                          Container(
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ColorLibrary.BackgroundColorLite,
                              borderRadius: BorderRadius.all(Radius.circular(8.0),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: TextWidget(
                                  text: "LVV736",
                                  brandedText: false,
                                  foreColor: ColorLibrary.TextColorDark,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.start),
                            ),
                          ),
                        ],
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: const[
                                 CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage:
                                  AssetImage(ImageLibrary.User),
                                  backgroundColor: Colors.transparent,
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top:5.0),
                                  child: TextWidget(
                                      text: "Muhammed Sani",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20.0,),
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorLibrary.BackgroundColorLite),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(
                                      Icons.call,
                                      color: ColorLibrary.TextColorDark,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.only(top:5.0),
                                  child: TextWidget(
                                      text: "Contact driver",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.center),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: ColorLibrary.TextColorLite,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: TextWidget(
                                      text: "Add stop",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLibrary.TextColorLite,
                              size: 14,
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
                                const Icon(
                                  Icons.flag_sharp,
                                  color: ColorLibrary.TextColorLite,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Destination",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorLite,
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Miraclz by Danube Properties",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLibrary.TextColorLite,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.0,
                        width: deviceScreenWidth,
                        color: ColorLibrary.BackgroundColorLite,
                      ),
                  ],),
                ),
              ),
              expandedWidget: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Container(
                  height: 700,
                  width: deviceScreenWidth - 10,
                  decoration: const BoxDecoration(
                    color: ColorLibrary.BackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 5,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: ColorLibrary.BackgroundColorLite,
                            borderRadius: BorderRadius.all(Radius.circular(20.0),
                            ),
                          ),),
                      ),
                      const TextWidget(
                          text: "Arriving in ~2 min",
                          brandedText: false,
                          foreColor: ColorLibrary.TextColorDark,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.start),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TextWidget(
                                text: "White Lexus ES",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 11,
                                fontWeight: FontWeight.normal,
                                textAlign: TextAlign.start),
                            const SizedBox(width: 5,),
                            Container(
                              height: 20,
                              decoration: const BoxDecoration(
                                color: ColorLibrary.BackgroundColorLite,
                                borderRadius: BorderRadius.all(Radius.circular(8.0),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: TextWidget(
                                    text: "LVV736",
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    textAlign: TextAlign.start),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: const[
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage:
                                  AssetImage(ImageLibrary.User),
                                  backgroundColor: Colors.transparent,
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top:5.0),
                                  child: TextWidget(
                                      text: "Muhammed Sani",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20.0,),
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorLibrary.BackgroundColorLite),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(
                                      Icons.call,
                                      color: ColorLibrary.TextColorDark,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.only(top:5.0),
                                  child: TextWidget(
                                      text: "Contact driver",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.center),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: ColorLibrary.TextColorLite,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: TextWidget(
                                      text: "Add stop",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLibrary.TextColorLite,
                              size: 14,
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
                                const Icon(
                                  Icons.flag_sharp,
                                  color: ColorLibrary.TextColorLite,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Pickup",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorLite,
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Platinum One",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLibrary.TextColorLite,
                              size: 14,
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
                                const Icon(
                                  Icons.flag_sharp,
                                  color: ColorLibrary.TextColorLite,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Destination",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorLite,
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Miraclz by Danube Properties",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLibrary.TextColorLite,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Container(
                          height: 5.0,
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
                                  ImageLibrary.Visa,
                                  width: 25.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Card payment: AED18",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorLite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5.0),
                                      child: TextWidget(
                                          text: "Exact price available after ride",
                                          brandedText: false,
                                          foreColor: ColorLibrary.TextColorDark,
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal,
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(builder: (context) {
                                  return const PaymentMethodScreen();
                                }));
                              },
                              child: Container(
                                height: 25,
                                width: 50,
                                decoration: const BoxDecoration(
                                  color: ColorLibrary.BackgroundColorLite,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: TextWidget(
                                      text: "Edit",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.center),
                                ),
                              ),
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
                              children: const [
                                Icon(
                                  Icons.info_outline,
                                  color: ColorLibrary.TextColorLite,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: TextWidget(
                                      text: "Details",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLibrary.TextColorLite,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 5.0,
                        width: deviceScreenWidth,
                        color: ColorLibrary.BackgroundColorLite,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: TextWidget(
                                      text: "Cancel ride",
                                      brandedText: false,
                                      foreColor: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLibrary.TextColorLite,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black12),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(
                                      Icons.share,
                                      color: ColorLibrary.TextColorDark,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.only(top:5.0),
                                  child: TextWidget(
                                      text: "Share route",
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
                                      color: Colors.black12),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.only(top:5.0),
                                  child: TextWidget(
                                      text: "New request",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.center),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],),
                ),
              ),
              backgroundWidget: Container(
                height: deviceScreenHeight,
                width: deviceScreenWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageLibrary.Map),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              maxExtent: MediaQuery.of(context).size.height * 0.8,
              onDragging: (pos) {},
            ),));
  }
}
