import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/data/datasource/remote/forgetpassword/checkemail_data.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  checkemail();
}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkemail() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respose = await checkEmailData.checkEmail(email.text);
      // print("respose");
      statusRequest = handlingData(respose);
      print(respose);
      if (statusRequest == StatusRequest.success) {
        if (respose["status"] == "success") {
          // data.addAll(respose["data"]);
          Get.offNamed(AppRoutes.verfiyCodeResetPassword , arguments: {'email' : email.text.toString()});
        } else {
          Get.defaultDialog(title: "WA".tr, middleText: "ENF".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
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
