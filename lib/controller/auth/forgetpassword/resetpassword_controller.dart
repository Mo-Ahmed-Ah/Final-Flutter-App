import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
 resetPassword();
 goToSccessResetPassword();
 
}

class ResetPasswordControllerImp extends ResetpasswordController{
  late TextEditingController newPassword;
  late TextEditingController reNewPassword;


  @override
  resetPassword() {
    throw UnimplementedError();
  }
  
  @override
  goToSccessResetPassword() {
    Get.offNamed(AppRoutes.successresetpasword);
  }
  
  @override
  void onInit() {

    newPassword = TextEditingController();
    reNewPassword = TextEditingController();

    
    super.onInit();
  }
  
  @override
  void dispose() {
    newPassword.dispose();
    reNewPassword.dispose();

    super.dispose();
  }

}