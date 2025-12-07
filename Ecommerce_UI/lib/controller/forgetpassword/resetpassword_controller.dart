import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/data/datasource/remote/forgetpassword/resetpassword_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
 resetPassword();
 goToSccessResetPassword();
 
}

class ResetPasswordControllerImp extends ResetpasswordController{
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  late TextEditingController newPassword;
  late TextEditingController reNewPassword;
  StatusRequest? statusRequest;

String? email;

  bool isShowPasswordIcon = true;
  IconData passIcon = Icons.lock_outline;
  bool isShowRePasswordIcon = true;
  IconData reNewPassIcon = Icons.lock_outline;


  showPassword() {
    isShowPasswordIcon = !isShowPasswordIcon;
    if (isShowPasswordIcon) {
      passIcon = Icons.lock_outline;
    } else {
      passIcon = Icons.lock_open_outlined;
    }
    update();
  }

  showRePassword() {
    isShowRePasswordIcon = !isShowRePasswordIcon;
    if (isShowRePasswordIcon) {
      reNewPassIcon = Icons.lock_outline;
    } else {
      reNewPassIcon = Icons.lock_open_outlined;
    }
    update();
  }

  @override
  resetPassword() async{
     if(newPassword.text == reNewPassword.text){
      goToSccessResetPassword();
     }else{
      return Get.defaultDialog(title: "WA".tr, middleText: "PNM".tr);
     }
  }
  
  @override
  goToSccessResetPassword() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respose = await resetPasswordData.changePassword(
        email!,
        newPassword.text
      );
      // print("respose");
      statusRequest = handlingData(respose);
      print(respose);
      if (statusRequest == StatusRequest.success) {
        if (respose["status"] == "success") {
          // data.addAll(respose["data"]);
          Get.offNamed(AppRoutes.successresetpasword);
        } else {
          Get.defaultDialog(
            title: "WA".tr,
            middleText:"TA".tr,
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }
  
  @override
  void onInit() {
    email = Get.arguments["email"];
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