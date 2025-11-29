import 'package:get/route_manager.dart';

class MyTranslation implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "ar" : {
        "1" : "أختر اللغه"
    },
    "en" : {
      "1" : "Choose Language"
    },
  };
}