import 'package:finalflutterapp/controller/onboarding_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/onboarding/custombutton.dart';
import 'package:finalflutterapp/view/widget/onboarding/customslider.dart';
import 'package:finalflutterapp/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const CustomDotControllerOnBoarding(),
                  const Spacer(flex: 2,),
                  const CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
