import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
 checkemail();
 goToVerfiyCode();
 
}

class ForgetpasswordControllerImp extends ForgetpasswordController{
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;


  @override
  checkemail() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("V".tr);
      goToVerfiyCode();
    }else{
      print("NV".tr);
    }
  }
  
  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoutes.verfiycode);
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