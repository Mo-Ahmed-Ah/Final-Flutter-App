import 'package:finalflutterapp/core/constant/AppTheme.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;
  
  changeLang(String languageCode){
    Locale locale = Locale(languageCode);
    myServices.sharedPreferences.setString("lang", languageCode);
    appTheme = languageCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if(sharedPrefLang == "ar"){
      language = const Locale("ar");
      appTheme = themeArabic;
    }else if(sharedPrefLang == "en"){
      language = const Locale("en");
      appTheme = themeEnglish;
    }else{
      language =  Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}