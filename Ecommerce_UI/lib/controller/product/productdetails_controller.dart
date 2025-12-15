import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  
  late ItemsModel itemsModel;
  
  initialData(){
    itemsModel = Get.arguments["itemsmodel"];
  }
  
  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}