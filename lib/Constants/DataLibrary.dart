// ignore_for_file: file_names, constant_identifier_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

import 'ImageLibrary.dart';

class DataLibrary {

  static double DeviceWidth(context){
    //Dimensions
    return MediaQuery.of(context).size.width;
  }

  static double DeviceHeight(context){
    //Dimensions
    return MediaQuery.of(context).size.height;
  }

  //Main Colors
  static const String AppName = "Munve";
  static const String AppVersion = "1.0.0";

  static const List<String> Products = [
    "Fresh Cow Meat",
    "Shrimps",
    "Cabbage",
    "Frozen Chicken",
    "Crate of Fresh Egg",
    "Pea Nuts",
    "Banana",
    "Rice",
    "Avocado",
    "Ice Fish"
  ];

  //Invoice status category
  static List<Map> InvoiceStatusList = [
    {
      "category": "all",
      "icon": ImageLibrary.AppLogo,
    },
    {
      "category": "pending",
      "icon": ImageLibrary.AppLogo,
    },
    {
      "category": "approved",
      "icon": ImageLibrary.AppLogo,
    },
    {
      "category": "dispatched",
      "icon": ImageLibrary.AppLogo,
    },
    {
      "category": "delivered",
      "icon": ImageLibrary.AppLogo,
    },
  ];

}
