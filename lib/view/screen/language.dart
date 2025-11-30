import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/localization/changelocale.dart';
import 'package:finalflutterapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("CL".tr , style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: 20,),
            Custombuttonlang(textButton: "Ar" , onPressed: (){
              controller.changeLang("ar");
              Get.toNamed(AppRoutes.onBoarding);
            }),
           Custombuttonlang(textButton: "En" , onPressed: (){
              controller.changeLang("en");
              Get.toNamed(AppRoutes.onBoarding);
           })
          ],
        ),
      ),
    );
  }
}