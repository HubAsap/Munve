import 'package:flutter/material.dart';

import '../../Constants/ColorLibrary.dart';
import '../Widgets/TextWidget.dart';

class SavedPlacesScreen extends StatefulWidget {
  const SavedPlacesScreen({Key? key}) : super(key: key);

  @override
  State<SavedPlacesScreen> createState() => _SavedPlacesScreenState();
}

class _SavedPlacesScreenState extends State<SavedPlacesScreen> {

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
                Icons.add,
                color: ColorLibrary.TextColorLite,
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
                                text: "Saved Places",
                                brandedText: false,
                                foreColor: ColorLibrary.TextColorDark,
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center),
                          ),
                          GestureDetector(
                            onTap: (){
                              //Add home address
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.add,
                                      color: ColorLibrary.TextColorLite,
                                    ),
                                  ),
                                  TextWidget(
                                      text: "Add home address",
                                      brandedText: false,
                                      foreColor: ColorLibrary.TextColorDark,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              //Add home address
                            },
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                                  child: Icon(
                                    Icons.add,
                                    color: ColorLibrary.TextColorLite,
                                  ),
                                ),
                                TextWidget(
                                    text: "Add work address",
                                    brandedText: false,
                                    foreColor: ColorLibrary.TextColorDark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ]))))
    );
  }
}
