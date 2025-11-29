import 'package:finalflutterapp/controller/onboarding_controller.dart';
import 'package:finalflutterapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          
          SizedBox(height: 80),
          Image.asset(
            onBoardingList[i].image!,
            // width: 200,
            // height: 230,
            // fit: BoxFit.fill,
          ),
          SizedBox(height: 80),
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
