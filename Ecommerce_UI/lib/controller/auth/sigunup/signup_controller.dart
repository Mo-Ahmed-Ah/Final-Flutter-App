import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/data/datasource/remote/auth/signup/sigunup_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToSignIn();
}

class SignupControllerImp extends SignupController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phoneNumber;
  late TextEditingController password;
  StatusRequest statusRequest = StatusRequest.none;

  bool isShowIcon = true;
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


   
  SigunUpData sigunUpData = SigunUpData(Get.find());
  List data = [];
  @override
  signUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respose = await sigunUpData.postData(
        userName.text,
        password.text,
        email.text,
        phoneNumber.text,
      );
      // print("respose");
      statusRequest = handlingData(respose);
      print(respose);
      if (statusRequest == StatusRequest.success) {
        if (respose["status"] == "success") {
          // data.addAll(respose["data"]);

          Get.offNamed(AppRoutes.verificationCodeSigunUp , arguments: {
            'email' : email.text
          });
        } else {
          Get.defaultDialog(
            title: "WA".tr,
            middleText:"VCNC".tr,
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
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
