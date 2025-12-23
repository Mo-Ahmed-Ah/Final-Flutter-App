import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class VerifyCodeSignupData {
  Crud crud;
  VerifyCodeSignupData(this.crud);
  postData(String email, String verfiycode) async {
    var respose = await crud.postData(Applink.verfiyCodeSigunUp, {
      "email": email,
      "verifycode": verfiycode,
    });
    return respose.fold((l) => l, (r) => r);
  }

  reSendData(String email) async {
    var respose = await crud.postData(Applink.reSendVerfiyCodeSigunUp, {
      "email": email,
    });
    return respose.fold((l) => l, (r) => r);
  }
}
