import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  findData(String password, String email) async {
    
    var respose = await crud.postData(Appilink.login, {
      "email": email,
      "password": password,
    });
    print(respose);
    return respose.fold((l) => l, (r) => r);
  }
}
