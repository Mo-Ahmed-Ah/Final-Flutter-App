import 'package:finalflutterapp/core/constant/imageasset.dart';
import 'package:finalflutterapp/data/model/onboardingmodel.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "CP", 
      body: "CPD",
      image: AppImageAsset.onBoardingImageOne
    ),
  OnBoardingModel(
      title: "ESP", 
      body: "ESPD", 
      image: AppImageAsset.onBoardingImageTwo
    ),
  OnBoardingModel(
      title: "TYO", 
      body: "TYOD",
      image: AppImageAsset.onBoardingImageThree
    ),
  // OnBoardingModel(
  //     title: "Fast Delivery" , 
  //     body: "Reliable And Fast Delivery. We \nDeliver your product the fastest \nway possible" , 
  //     image: AppImageAsset.onBoardingImageFour
  //   ),
  ] ;