import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/cart_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  CartData cartData = CartData(Get.find());
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  add(String itemId) async {
    statusRequest = StatusRequest.loading;
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
  }

  delete(String itemId) async {
    statusRequest = StatusRequest.loading;
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
  }

  getCountItems(String itemId) async {
    statusRequest = StatusRequest.loading;
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
      } else {}
    }
  }

  view() {}

  @override
  void onInit() {
    super.onInit();
  }
}
