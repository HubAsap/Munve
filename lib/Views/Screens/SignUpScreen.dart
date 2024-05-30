import 'package:flutter/material.dart';
import 'package:munve/Constants/DataLibrary.dart';
import 'package:munve/Functions/StringHelper.dart';
import 'package:munve/Views/Screens/SignInScreen.dart';
import 'package:munve/Views/Screens/VerificationScreen.dart';
import 'package:munve/Views/Widgets/TextWidget.dart';
import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/ButtonWidget.dart';
import '../Widgets/ButtonWidget2.dart';

class SignUpScreen extends StatefulWidget {
  final bool canPopContext;

  const SignUpScreen({Key? key, required this.canPopContext}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  late TextEditingController _phoneNumberController;
  String _helperText = "";

  bool isRefresh = false;
  double deviceScreenWidth = 600;
  double deviceScreenHeight = 1080;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _phoneNumberController = TextEditingController();
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
              widget.canPopContext ? InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: ColorLibrary.TextColorLite,
                ),
              ) : const SizedBox(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(child: SizedBox(
          width: deviceScreenWidth,
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
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
                    text: "Enter your phone number",
                    brandedText: false,
                    foreColor: ColorLibrary.TextColorDark,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                child: TextField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(color: Colors.teal)),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(color: ColorLibrary.PrimaryColor, width: 2.0),
                      ),
                      hintText: 'Enter your phone number',
                      focusColor: ColorLibrary.PrimaryColor,
                      helperText: _helperText,
                      helperStyle: const TextStyle(color: Colors.redAccent),
                      labelText: '',
                      prefixText: '+971 ',
                      suffixText: '',
                      suffixStyle: const TextStyle(color: Colors.green)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: ButtonWidget(
                  width: deviceScreenWidth - 80,
                  height: 40,
                  text: "Next",
                  onTap: (){
                    if(!StringHelper.IsNullOrEmptyOrAllSpace(_phoneNumberController.text) && StringHelper.isDigit(_phoneNumberController.text)){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return VerificationScreen(phoneNumber: _phoneNumberController.text);
                      }));
                    }else{
                      setState(() {
                        _helperText = "Please enter a valid phone number";
                      });
                    }

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
                  text: "Sign in with ${DataLibrary.AppName}",
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SignInScreen();
                    }));
                  },
                  btnBGcolor: ColorLibrary.BackgroundColor,
                  borderColor: ColorLibrary.TextColorLite,
                  textColor: ColorLibrary.TextColorDark,
                  isLoading: false,
                ),
              ),
      ]),
          ))),
    );
  }
}
