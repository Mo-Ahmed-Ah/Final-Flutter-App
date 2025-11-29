import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/localization/changelocale.dart';
import 'package:finalflutterapp/core/localization/translation.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/routes.dart';
import 'package:finalflutterapp/view/screen/language.dart';
import 'package:finalflutterapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller =  Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
            fontFamily: "PlayfairDisplay",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
          ),
          bodySmall: const TextStyle(
            height: 2,
            fontFamily: "PlayfairDisplay",
            color: AppColor.gray,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          bodyLarge: const TextStyle(
            height: 2,
            color: AppColor.gray,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home:  const Language(),
      routes: routes,
    );
  }
}
