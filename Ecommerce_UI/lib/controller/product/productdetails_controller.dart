import 'package:finalflutterapp/controller/cart/cart_controller.dart';
import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  CartController cartController = Get.put(CartController());
  late StatusRequest statusRequest;
  int countItems = 0;

  initialData() async {
    statusRequest = StatusRequest.loading;
    itemsModel = Get.arguments["itemsmodel"];
    countItems = await cartController.getCountItems(
      itemsModel.itemId.toString(),
    );
    statusRequest = StatusRequest.success;
    update();
  }

  List subItems = [
    {"name": "red", "id": "1", "active": "1"},
    {"name": "black", "id": "2", "active": "0"},
    {"name": "youllw", "id": "3", "active": "0"},
  ];
  late ItemsModel itemsModel;

  @override
  void onInit() async {
    initialData();
    super.onInit();
  }
}
