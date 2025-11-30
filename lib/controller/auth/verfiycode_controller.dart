import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
 checkCode();
 goToResetPassword();
 
}

class VerfiyCodeControllerImp extends VerfiyCodeController{
  late String verfiyCode;

  @override
  checkCode() {
    throw UnimplementedError();
  }
  
  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetpassword);
  }
  
  @override
  void onInit() {


    
    super.onInit();
  }
  
  @override
  void dispose() {
    super.dispose();
  }

}