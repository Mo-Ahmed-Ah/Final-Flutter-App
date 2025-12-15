import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id) async {
    var respose = await crud.postData(Applink.items, {"id": id});
    return respose.fold((l) => l, (r) => r);
  }
}
