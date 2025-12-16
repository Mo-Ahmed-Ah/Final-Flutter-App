import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  List subItems = [
    {"name": "red", "id": "1", "active": "1"},
    {"name": "black", "id": "2", "active": "0"},
    {"name": "youllw", "id": "3", "active": "0"},
  ];
  late ItemsModel itemsModel;

  initialData() {
    itemsModel = Get.arguments["itemsmodel"];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
