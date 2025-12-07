import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/data/datasource/remote/forgetpassword/forgetpasswordverifycode_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode(String verifycode);
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  StatusRequest? statusRequest;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  ForgetPasswordVerifyCodeData forgetPasswordVerifyCodeData =
      ForgetPasswordVerifyCodeData(Get.find());
  late TextEditingController email;
  @override
  checkCode(String verifycode) async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respose = await forgetPasswordVerifyCodeData.checkVerifyCode(
        email.text,
        verifycode,
      );
      // print("respose");
      statusRequest = handlingData(respose);
      print(respose);
      if (statusRequest == StatusRequest.success) {
        if (respose["status"] == "success") {
          // data.addAll(respose["data"]);
          Get.offNamed(AppRoutes.resetpassword, arguments: {'email': email});
        } else {
          Get.defaultDialog(title: "WA".tr, middleText: "ENF".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  goToResetPassword() {}

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
