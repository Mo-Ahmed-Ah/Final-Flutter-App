import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
 signUp();
 goToSignIn();
}

class SignupControllerImp extends SignupController{
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phoneNumber;
  late TextEditingController password;

  @override
  signUp() {
    Get.offNamed(AppRoutes.checkemail);
  }
  
  @override
   goToSignIn() {
    Get.offNamed(AppRoutes.login);
  }
  
  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phoneNumber = TextEditingController();
    password = TextEditingController();
    
    super.onInit();
  }
  
  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();
    super.dispose();
  }

}