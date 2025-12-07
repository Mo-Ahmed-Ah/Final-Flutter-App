import 'package:finalflutterapp/controller/test_data/test_data_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestDataController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Get Data"),
        backgroundColor: AppColor.primaryColor,
      ),
      body: GetBuilder<TestDataController>(
        builder: (controller) {
          return HandlingDataView(
            statusrequest: controller.statusRequest,
            widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              },
            ),
          );
        },
      ),
    );
  }
}
