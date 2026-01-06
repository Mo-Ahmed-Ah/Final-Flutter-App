import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/data/datasource/remote/home_data.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchMixController extends GetxController {
  List<ItemsModel> listData = [];

  HomeData homeData = HomeData(Get.find());

  late StatusRequest statusRequest;

  TextEditingController? itemName;

  bool isSearch = false;
  checkSearch(val) {
    statusRequest = StatusRequest.none;
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
