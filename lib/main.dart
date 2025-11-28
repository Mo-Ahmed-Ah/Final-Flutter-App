import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/routes.dart';
import 'package:finalflutterapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
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
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
