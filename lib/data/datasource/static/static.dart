import 'package:finalflutterapp/core/constant/imageasset.dart';
import 'package:finalflutterapp/data/model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product" , 
      body: "We Have a 100K Product , Choose \n your Product From our E-commerce Shop" ,
      image: AppImageAsset.onBoardingImageOne
    ),
  OnBoardingModel(
      title: "Easy & Safe Payment" , 
      body: "Easy Checkout & Safe Payment \nmethod. Trusted by our Customers \nfrom all over the world" , 
      image: AppImageAsset.onBoardingImageTwo
    ),
  OnBoardingModel(
      title: "Track Your Order" , 
      body: "Best Tracker has been Used For \nTrack your order. You'll know where \nyour product is at the moment" ,
      image: AppImageAsset.onBoardingImageThree
    ),
  // OnBoardingModel(
  //     title: "Fast Delivery" , 
  //     body: "Reliable And Fast Delivery. We \nDeliver your product the fastest \nway possible" , 
  //     image: AppImageAsset.onBoardingImageFour
  //   ),
  ] ;