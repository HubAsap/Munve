// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:math';

class StringHelper {
  static bool IsNullOrEmptyOrAllSpace(String str) {
    if (str.isEmpty) {
      return true;
    }

    for (int i = 0; i < str.length; i++) {
      if (str[0] == " ") {
        return true;
      }
    }

    return false;
  }

  static String BalanceFormater(double balance, String currency){
    return "$currency " + balance.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => "${m[1]},");
  }

  static String GenerateRandomCapsLetterAndDigitsOnly(int length)
  {
    int count = length;
    Random objectName = Random();
    int number = 0;
    String charLibray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    String result = "";

    do
    {
      number = objectName.nextInt(34);
      result = result + charLibray.substring(number, number+1);
      count--;
    } while (count > 0);

    return result;
  }

  static String GenerateRandomDigitsOnly(int length)
  {
    int count = length;
    Random objectName = Random();
    int number = 0;
    String charLibray = "1234567890";
    String result = "";

    do
    {
      number = objectName.nextInt(9);
      result = result + charLibray.substring(number, number+1);
      count--;
    } while (count > 0);

    return result;
  }

  static String GenerateRandomCapsLetterOnly(int length)
  {
    int count = length;
    Random objectName = Random();
    int number = 0;
    String charLibray = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String result = "";

    do
    {
      number = objectName.nextInt(25);
      result = result + charLibray.substring(number, number+1);
      count--;
    } while (count > 0);

    return result;
  }

  static String BillingCardNumberFormatter(String cardNumber){
    cardNumber = cardNumber.replaceAll(' ', '');
    int numberLength = cardNumber.length;
    String newNumber = "";
    int sequence = 0;
    int loop = (int.parse((numberLength / 4).toString().substring(0, (numberLength / 4).toString().indexOf('.'))) + (numberLength.isEven ? 0 : 1));

    for(var i=0; i<loop; i++){
      newNumber = newNumber + cardNumber.substring(sequence, (i + 1 == loop) ? cardNumber.length : sequence + 4) + " ";
      sequence = sequence + 4;
    }

    return newNumber.toString();
  }

  static bool isDigit(String value){
    try{
      int.parse(value);
      return true;
    }on Exception{
      return false;
    }
  }

  static bool isMoney(String value){
    try{
      double.parse(value);
      return true;
    }on Exception{
      return false;
    }
  }

}
