import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/home_data.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class HomeController extends SearchMixController {
  initialData();
  getData();
  goToItems(List categories, int selectedCat, String categoryId);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? lang;

  String? userid;
  String? username;
  HomeData homeData = HomeData(Get.find());

  List data = [];
  List categories = [];
  List itmes = [];
  late StatusRequest statusRequest;

  @override
  initialData() {
    lang = myServices.sharedPreferences.getString('lang');
    username = myServices.sharedPreferences.getString('username');
    userid = myServices.sharedPreferences.getString('id');
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var respose = await homeData.getData();
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        categories.addAll(respose["categories"]['data']);
        itmes.addAll(respose["items"]['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    itemName = TextEditingController();
    getData();
    initialData();
    super.onInit();
  }

  @override
  goToItems(categories, selectedCat, categoryId) {
    Get.toNamed(
      AppRoutes.items,
      arguments: {
        "categories": categories,
        "selectedCat": selectedCat,
        "categoryID": categoryId,
      },
    );
  }

  goToProductDetailsPage(itemsData) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsData});
  }
}

class SearchMixController extends GetxController {
  List<ItemsModel> listData = [];

  HomeData homeData = HomeData(Get.find());

  late StatusRequest statusRequest;

  TextEditingController? itemName;

  bool isSearch = false;
  checkSearch(val) {
    if (val == "") {
      isSearch = false;
    }
    update();
  }

  onSearchItems() async {
    isSearch = true;
    searchData();
    update();
  }

  searchData() async {
    statusRequest = StatusRequest.loading;
    var respose = await homeData.searchData(itemName!.text);
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        listData.clear();
        List resposeData = respose['data'];
        listData.addAll(resposeData.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
