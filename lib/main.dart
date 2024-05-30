// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Constants/DataLibrary.dart';
import 'Views/Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: DataLibrary.AppName,
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
    //home: GoogleSignInHome()),);
  }
}
