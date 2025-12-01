import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
 login();
 goToSignUp();
 goToForgetPassword();
}

class LoginControllerImp extends LoginController{
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  
  bool isShowIcon = false;
  IconData passIcon = Icons.lock_outline;

  showPassword(){
    isShowIcon = !isShowIcon;
    if(isShowIcon){
      passIcon = Icons.lock_outline;
    }else{
      passIcon = Icons.lock_open_outlined;
    }
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("V".tr);
    }else{
      print("NV".tr);
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signUp);
  }
  
  @override
  goToForgetPassword() {
    Get.offNamed(AppRoutes.forgetpassword);
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