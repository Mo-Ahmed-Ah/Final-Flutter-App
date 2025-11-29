import 'package:get/route_manager.dart';

class MyTranslation implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "ar" : {
        "CL" : "أختر اللغه",
        "WB" : "مرحبا بالعودة",
        "SI" : "تسجيل دخول",
        "SIT" : "تسجيل الدخول بالايميل والباسورد او بسوشيل مديا",
        "E" : "البريد الأكتروني",
        "EYE" :"أدخل بريدك الألكتروني",
        "PW" : "كلمة السر",
        "EPW" : "أدخل كلمة المرور"
    },
    "en" : {
      "CL" : "Choose Language",
      "WB" : "Welcome Back",
      "SI" : "Sign In",
      "SIT" : "Sign In Your Email And Password OR Continue With Social Media",
      "E" : "Email",
      "EYE" :"Enter Your Email",
      "PW" : "PassWord",
      "EPW" : "Enter Password"
    },
  };
}