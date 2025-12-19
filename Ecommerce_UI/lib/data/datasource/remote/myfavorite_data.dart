import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  getData(String id) async {
    var respose = await crud.postData(Applink.viewFavorite, {"userid": id});
    return respose.fold((l) => l, (r) => r);
  }
}
