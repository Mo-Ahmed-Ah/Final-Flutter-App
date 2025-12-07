import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/data/datasource/remote/auth/signup/verifycodesignup_data.dart'; 
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verifycode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {  
  VerifyCodeSignupData verifyCodeSignupData = VerifyCodeSignupData(Get.find());

  String? email;

   StatusRequest statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(String verifycode) async {
      statusRequest = StatusRequest.loading;
      update();
      var respose = await verifyCodeSignupData.postData(
        email!,
        verifycode ,
      );
      statusRequest = handlingData(respose);
      if (statusRequest == StatusRequest.success) {
        if (respose["status"] == "success") {
          Get.offNamed(AppRoutes.successsignup);  
        } else {
          Get.defaultDialog(
            title: "WA".tr,
            middleText:"PNOEAE".tr,
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
  }

void onInit(){
  email = Get.arguments['email'];
  super.onInit();
}
 
}