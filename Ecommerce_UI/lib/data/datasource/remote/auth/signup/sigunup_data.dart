import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class SigunUpData {
  Crud crud;
  SigunUpData(this.crud);
  postData(String username, String password, String email, String phone) async {
    
    var respose = await crud.postData(Appilink.signup, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    print(respose);
    return respose.fold((l) => l, (r) => r);
  }
}
