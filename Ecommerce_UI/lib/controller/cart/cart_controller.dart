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
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHNBRTC".tr));
        statusRequest = StatusRequest.failure;
      }
    }
  }

  delete() {}
  view() {}
}
