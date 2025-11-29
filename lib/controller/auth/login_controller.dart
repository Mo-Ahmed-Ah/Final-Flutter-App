import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/view/screen/auth/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
 login();
 goToSignUp();
 goToForgetPassword();
}

class LoginControllerImp extends LoginController{
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {
    throw UnimplementedError();
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signUp);
  }
  
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetpassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    
    super.onInit();
  }
  
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  

}