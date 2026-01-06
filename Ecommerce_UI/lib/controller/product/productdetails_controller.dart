import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/cart_data.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  // CartController cartController = Get.put(CartController());
  MyServices myServices = Get.find();
  CartData cartData = CartData(Get.find());

  late StatusRequest statusRequest;
  int countItems = 0;

  initialData() async {
    statusRequest = StatusRequest.loading;
    itemsModel = Get.arguments["itemsmodel"];
    countItems = await getCountItems(itemsModel.itemId.toString());
    statusRequest = StatusRequest.success;
    update();
  }

  List subItems = [
    {"name": "red", "id": "1", "active": "1"},
    {"name": "black", "id": "2", "active": "0"},
    {"name": "youllw", "id": "3", "active": "0"},
  ];
  late ItemsModel itemsModel;

  add() {
    addItems(itemsModel.itemId!.toString());
    countItems++;
    update();
  }

  remove() {
    if (countItems > 0) {
      delete(itemsModel.itemId!.toString());
      countItems--;
      update();
    }
  }

  addItems(String itemId) async {
    statusRequest = StatusRequest.loading;
    update();
    var respose = await cartData.addItemToCart(
      myServices.sharedPreferences.getString("id")!,
      itemId,
    );
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHBATC".tr));
        // data.addAll(respose["data"]);
      } else {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHNBATC".tr));
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  delete(String itemId) async {
    statusRequest = StatusRequest.loading;
    update();
    var respose = await cartData.removeItemFromCart(
      myServices.sharedPreferences.getString("id")!,
      itemId,
    );
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHBRFC".tr));
        // data.addAll(respose["data"]);
      } else {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHNBRFC".tr));
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  getCountItems(String itemId) async {
    statusRequest = StatusRequest.loading;
    update();
    var respose = await cartData.getCountItemsFromCart(
      myServices.sharedPreferences.getString("id")!,
      itemId,
    );
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        int countItems = 0;
        countItems = respose['data'];
        print("===============================");
        print(countItems);
        print("===============================");
        return countItems;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() async {
    initialData();
    super.onInit();
  }
}
