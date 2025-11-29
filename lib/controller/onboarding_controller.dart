import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int pageIndex);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {

    currentPage++;
    if(currentPage > onBoardingList.length - 1)   {
      Get.offAllNamed(AppRoutes.login);
    }else{
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int pageIndex) {
    currentPage = pageIndex;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
