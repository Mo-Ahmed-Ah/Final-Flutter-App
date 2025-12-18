import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String userId, String itemId) async {
    var respose = await crud.postData(Applink.addItemToFavorite, {
      "userid": userId,
      "itemid": itemId,
    });
    return respose.fold((l) => l, (r) => r);
  }

  removeFavorite(String userId, String itemId) async {
    var respose = await crud.postData(Applink.removeItemFromFavorite, {
      "userid": userId,
      "itemid": itemId,
    });
    return respose.fold((l) => l, (r) => r);
  }
}
