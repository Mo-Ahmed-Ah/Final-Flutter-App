import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
 checkemail();
 goToVerificationCodeSigunUp();
 
}

class CheckEmailControllerImp extends CheckEmailController{
  late TextEditingController email;


  @override
  checkemail() {
    throw UnimplementedError();
  }
  
  @override
  goToVerificationCodeSigunUp() {
    Get.offNamed(AppRoutes.verificationCodeSigunUp);
  }
  
  @override
  void onInit() {

    email = TextEditingController();

    
    super.onInit();
  }
  
  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

}