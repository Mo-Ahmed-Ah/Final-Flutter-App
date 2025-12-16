import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/items_data.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int value, String catVal);
  getItems(String categoryID);
  goToProductDetailsPage(ItemsModel itemsData);
}

class ItemsControllerImp extends ItemsController {
  ItemsData itemsData = ItemsData(Get.find());

  List data = [];
  late StatusRequest statusRequest;

  List categories = [];
  int? selectedCat;
  String? categoryID;

  MyServices myServices = Get.find();

  @override
  initialData() {
    categories = Get.arguments["categories"];
    selectedCat = Get.arguments["selectedCat"];
    categoryID = Get.arguments["categoryID"];
    getItems(categoryID!);
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  changeCat(value, catVal) {
    selectedCat = value;
    categoryID = catVal;
    getItems(categoryID!);
    update();
  }

  @override
  getItems(categoryID) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var respose = await itemsData.getData(categoryID , myServices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        data.addAll(respose["data"]);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
  
  @override
  goToProductDetailsPage(itemsData) {
    Get.toNamed("productdetails" , arguments: {
      "itemsmodel" : itemsData
    });
  }
}
