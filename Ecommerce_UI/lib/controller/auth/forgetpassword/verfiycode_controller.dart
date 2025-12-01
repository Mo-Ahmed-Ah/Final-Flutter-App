import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {  

  late String verifycode  ; 

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetpassword);
  }


 
}