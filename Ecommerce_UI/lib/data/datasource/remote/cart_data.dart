import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/class/crud.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  addItemToCart(String userId, String itemId) async {
    var respose = await crud.postData(Applink.addItemToCart, {
      "userid": userId,
      "itemid": itemId,
    });
    return respose.fold((l) => l, (r) => r);
  }

  removeItemFromCart(String userId, String itemId) async {
    var respose = await crud.postData(Applink.removeItemFromCart, {
      "userid": userId,
      "itemid": itemId,
    });
    return respose.fold((l) => l, (r) => r);
  }

  
}
