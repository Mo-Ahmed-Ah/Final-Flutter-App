import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);
  changePassword(String email, String password) async {
    var respose = await crud.postData(Applink.resetPassword, {
      "email": email,
      "password": password,
    });
    print(respose);
    return respose.fold((l) => l, (r) => r);
  }
}
