import 'package:flutter/material.dart';
import 'package:munve/Constants/DataLibrary.dart';
import 'package:munve/Views/Widgets/TextWidget.dart';
import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/ButtonWidget.dart';
import '../Widgets/ButtonWidget2.dart';
import 'EnterFullNameScreen.dart';

class VerificationScreen extends StatefulWidget {
  final String phoneNumber;

  const VerificationScreen({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  late TextEditingController _verificationCodeController;
  String lastPhoneNumberDigits = "";

  bool isRefresh = false;
  double deviceScreenWidth = 600;
  double deviceScreenHeight = 1080;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verificationCodeController = TextEditingController();
    lastPhoneNumberDigits = widget.phoneNumber.substring(widget.phoneNumber.length - 2);
  }

  @override
  Widget build(BuildContext context) {
    if(!isRefresh){
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
      body: SingleChildScrollView(child: SizedBox(
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
                  padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: TextWidget(
                      text: "Please enter the code from the text message we sent to +971*** **$lastPhoneNumberDigits",
                      brandedText: false,
                      foreColor: ColorLibrary.TextColorDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: TextField(
                    controller: _verificationCodeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(color: Colors.teal)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(color: ColorLibrary.PrimaryColor, width: 2.0),
                        ),
                        hintText: '',
                        helperStyle: const TextStyle(color: Colors.redAccent),
                        suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ButtonWidget(
                    width: deviceScreenWidth - 80,
                    height: 40,
                    text: "Next",
                    onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const EnterFullNameScreen();
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
