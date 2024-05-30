// ignore_for_file: file_names

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static Future<String> loadPref(String prefID) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(prefID) ?? '';
  }

  static Future<bool> savePref(String prefID, String prefValue) async {
    SharedPreferences appUse = await SharedPreferences.getInstance();
    return await appUse.setString(prefID, prefValue);
  }

  static regUser(String uuid, String userEmail, String accountType, String userName, String userImage){
  savePref("UUID", uuid);
  savePref("AccountType", accountType);
  savePref("UserEmail", userEmail);
  savePref("UserName", userName);
  savePref("UserImage", userImage);
}

  // static saveFetchedFoodList(String listName, Future<List<FoodStuffModel>> listItems){
  //   savePref(listName, jsonEncode(listItems));
  // }
  //
  // static Future<List<FoodStuffModel>> fetchSavedFoodList(String prefID) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   List<FoodStuffModel> list = DBActionRead.parseResponseFoodStuffModel(preferences.getString(prefID) ?? '');
  //   return list;
  // }
}
