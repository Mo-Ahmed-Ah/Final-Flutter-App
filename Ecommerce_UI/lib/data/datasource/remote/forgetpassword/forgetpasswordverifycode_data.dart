import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class ForgetPasswordVerifyCodeData {
  Crud crud;
  ForgetPasswordVerifyCodeData(this.crud);
  checkVerifyCode(String email, String verifycode) async {
    var respose = await crud.postData(Appilink.forgetVerfiyCode, {
      "email": email,
      "verifycode": verifycode,
    });
    // print(respose);
    return respose.fold((l) => l, (r) => r);
  }
}
