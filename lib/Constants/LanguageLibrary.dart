// ignore_for_file: file_names, constant_identifier_names, unused_import

import 'package:flutter/material.dart';

class LanguageLibrary {

  static String convertLang(
      String phraseInEnglish, String convertToThisLanguage) {
    String result = '';

    switch (convertToThisLanguage) {
      case 'ar':
        result = _langArabic(phraseInEnglish);
        break;

      case 'fr':
        result = _langFrench(phraseInEnglish);
        break;

      case 'pidgin':
        result = _langPidgen(phraseInEnglish);
        break;

      default:
        result = phraseInEnglish;
        break;
    }
    return result;
  }

  static String _langArabic(String phraseInEnglish) {
    String result = '';
    switch (phraseInEnglish) {
      case 'Version 1.0.0':
        result = 'الإصدار 1.0.0';
        break;

      default:
        result = phraseInEnglish;
        break;
    }

    return result;
  }

  static String _langFrench(String phraseInEnglish) {
    String result = '';
    switch (phraseInEnglish) {
      case 'Version 1.0.0':
        result = 'Édition 1.0.0';
        break;

      default:
        result = phraseInEnglish;
        break;
    }

    return result;
  }

  static String _langPidgen(String phraseInEnglish) {
    String result = '';
    switch (phraseInEnglish) {
      case 'Version 1.0.0':
        result = phraseInEnglish;
        break;

      default:
        result = phraseInEnglish;
        break;
    }

    return result;
  }

}
