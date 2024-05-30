import 'package:flutter/material.dart';
import 'package:munve/Views/Screens/AcceptPolicyScreen.dart';
import 'package:munve/Views/Widgets/TextWidget.dart';
import '../../Constants/ColorLibrary.dart';
import '../../Constants/ImageLibrary.dart';
import '../Widgets/ButtonWidget.dart';

class EnterFullNameScreen extends StatefulWidget {
  const EnterFullNameScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EnterFullNameScreen> createState() => _EnterFullNameScreenState();
}

class _EnterFullNameScreenState extends State<EnterFullNameScreen> {

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;

  bool isRefresh = false;
  double deviceScreenWidth = 600;
  double deviceScreenHeight = 1080;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: TextWidget(
                      text: "Enter your full name to create an account",
                      brandedText: false,
                      foreColor: ColorLibrary.TextColorDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: TextField(
                    controller: _firstNameController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(color: Colors.teal)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(color: ColorLibrary.PrimaryColor, width: 2.0),
                        ),
                        labelText: 'First Name',
                        hintText: 'Enter your first name',
                        helperStyle: const TextStyle(color: Colors.redAccent),
                        suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: TextField(
                    controller: _lastNameController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(color: Colors.teal)),
                        focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(color: ColorLibrary.PrimaryColor, width: 2.0),
                        ),
                        labelText: 'Last Name',
                        hintText: 'Enter your last name',
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
                        return const AcceptPolicyScreen();
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
