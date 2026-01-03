import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/cart_data.dart';
import 'package:finalflutterapp/data/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  CartData cartData = CartData(Get.find());
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  List<CartModel> data = [];
  double priceOrdeds = 0.0;
  int totalCountItems = 0;

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
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  view() async {
    statusRequest = StatusRequest.loading;
    var respose = await cartData.viewCart(
      myServices.sharedPreferences.getString("id")!,
    );
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        List dataRespons = respose['datacart'];
        Map dataResponsCountAndPrice = respose["countandprice"];
        data.addAll(dataRespons.map((e) => CartModel.fromJson(e)));
        totalCountItems = int.parse(
          (dataResponsCountAndPrice["totalCount"].toString()),
        );
        print(dataResponsCountAndPrice["totalPrice"].toString());
        priceOrdeds = double.parse(
          (dataResponsCountAndPrice["totalPrice"].toString()),
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  resetVarCart() {
    totalCountItems = 0;
    priceOrdeds = 0.0;
    data.clear();
  }

  refreshPage() {
    resetVarCart();
    view();
    update();
  }

  @override
  void onInit() {
    view();
    super.onInit();
  }
}
