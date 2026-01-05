import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    var respose = await crud.postData(Applink.homePage, {});
    return respose.fold((l) => l, (r) => r);
  }

  searchData(String itemName) async {
    var respose = await crud.postData(Applink.searchItems, {
      "itemname": itemName,
    });
    return respose.fold((l) => l, (r) => r);
  }
}
