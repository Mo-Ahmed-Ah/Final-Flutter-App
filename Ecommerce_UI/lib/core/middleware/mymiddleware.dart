import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
  @override
  int?  get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route)  {
    if(myServices.sharedPreferences.getBool("onBoarding") == true){
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }

}