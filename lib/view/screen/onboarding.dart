
import 'package:finalflutterapp/view/widget/onboarding/custombutton.dart';
import 'package:finalflutterapp/view/widget/onboarding/customslider.dart';
import 'package:finalflutterapp/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
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
