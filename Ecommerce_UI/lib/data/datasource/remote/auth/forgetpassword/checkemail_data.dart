import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);
  checkEmail(String email) async {
    var respose = await crud.postData(Applink.checkEmail, {"email": email});
    print(respose);
    return respose.fold((l) => l, (r) => r);
  }
}
