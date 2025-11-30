import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "ALERT".tr,
    middleText: "DYWTLTP".tr,
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("YSE".tr),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("NO".tr),
      ),
    ],
  );
  return Future.value(true);
}
