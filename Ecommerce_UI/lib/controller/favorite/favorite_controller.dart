import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/favorite_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  Map isFavorite = {};
  FavoriteData favoriteData = FavoriteData(Get.find());

  List data = [];
  late StatusRequest statusRequest;

  List categories = [];
  int? selectedCat;
  String? categoryID;

  MyServices myServices = Get.find();

  setFavoite(id, value) {
    isFavorite[id] = value;
    update();
  }

  addFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var respose = await favoriteData.addFavorite(
      myServices.sharedPreferences.getString("id")!,
      itemsid,
    );
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHBATF".tr));
        // data.addAll(respose["data"]);
      } else {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHNBATF".tr));
        statusRequest = StatusRequest.failure;
      }
    }
  }

  removeFavorite(String itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var respose = await favoriteData.removeFavorite(
      myServices.sharedPreferences.getString("id")!,
      itemsid,
    );
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHBRFF".tr));
        // data.addAll(respose["data"]);
      } else {
        Get.rawSnackbar(title: "NOTIF".tr, messageText: Text("TIHNBRFF".tr));
        statusRequest = StatusRequest.failure;
      }
    }
  }
}
