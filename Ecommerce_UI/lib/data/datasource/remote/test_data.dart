import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class TestData {
  Crud crud;
  TestData(this.crud);
  getData() async {
    var respose = await crud.postData(Applink.test, {});
    return respose.fold((l) => l, (r) => r);
  }
}