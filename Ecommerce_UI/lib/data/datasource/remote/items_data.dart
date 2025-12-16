import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String categoryId , String userId) async {
    var respose = await crud.postData(Applink.items, {"categoryId": categoryId , "userId"  : userId});
    return respose.fold((l) => l, (r) => r);
  }
}
