import 'package:finalflutterapp/core/services/services.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
  Locale? language;

  MyServices myServices = Get.find();
  
  changeLang(String languageCode){
    Locale locale = Locale(languageCode);
    myServices.sharedPreferences.setString("lang", languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if(sharedPrefLang == "ar"){
      language = const Locale("ar");
    }else if(sharedPrefLang == "en"){
      language = const Locale("en");
    }else{
      language =  Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}