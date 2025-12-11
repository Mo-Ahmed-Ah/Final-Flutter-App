import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/auth/login/login_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  MyServices myServices = Get.find();
  bool isShowIcon = true;
  IconData passIcon = Icons.lock_outline;
  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isShowIcon = !isShowIcon;
    if (isShowIcon) {
      passIcon = Icons.lock_outline;
    } else {
      passIcon = Icons.lock_open_outlined;
    }
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respose = await loginData.findData(password.text, email.text);
      // print("respose");
      statusRequest = handlingData(respose);
      print(respose);
      if (statusRequest == StatusRequest.success) {
        if (respose["status"] == "success") {
          // data.addAll(respose["data"]);
          myServices.sharedPreferences.setString(
            'id',
            respose['data']['user_id'].toString(),
          );
          myServices.sharedPreferences.setString(
            'username',
            respose['data']['user_name'].toString(),
          );
          myServices.sharedPreferences.setString(
            'email',
            respose['data']['user_email'].toString(),
          );
          myServices.sharedPreferences.setString(
            'phone',
            respose['data']['user_phone'].toString(),
          );

          myServices.sharedPreferences.setString('step', '2');
          Get.offNamed(AppRoutes.home);
        } else {
          Get.defaultDialog(title: "WA".tr, middleText: "EOPNC".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
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
    FirebaseMessaging.instance.getToken().then((value) {
      String? token = value;
         if (kDebugMode) {
           print(token);
       }
    });

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
