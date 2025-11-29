import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/localization/changelocale.dart';
import 'package:finalflutterapp/core/localization/translation.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/routes.dart';
import 'package:finalflutterapp/view/screen/auth/login.dart';
// import 'package:finalflutterapp/view/screen/onboarding.dart';
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
          // head Text Styles
          headlineLarge: const TextStyle(
            fontFamily: "PlayfairDisplay",
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: AppColor.black,
          ),
          headlineMedium: const TextStyle(
            fontFamily: "PlayfairDisplay",
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: AppColor.black,
          ),
          headlineSmall: const TextStyle(
            fontFamily: "PlayfairDisplay",
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: AppColor.black,
          ),
          // body Text Styles
          bodyLarge: const TextStyle(
            height: 2,
            color: AppColor.gray,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          bodyMedium: const TextStyle(
            height: 2,
            color: AppColor.gray,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          bodySmall: const TextStyle(
            height: 2,
            fontFamily: "PlayfairDisplay",
            color: AppColor.gray,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home:  const Login(),
      routes: routes,
    );
  }
}
