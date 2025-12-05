import 'package:finalflutterapp/controller/remote/test_data_controller.dart';
import 'package:finalflutterapp/core/class/statusrequest.dart';
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
      ),
      body: GetBuilder<TestDataController>(builder: (controller){
        if(controller.statusRequest == StatusRequest.loading){
          return Center(child: Text("Loading"));
        }else if(controller.statusRequest == StatusRequest.offlinefailure){
          return Center(child: Text("Offline Falure"));
        }else if(controller.statusRequest == StatusRequest.serverfailyer){
          return Center(child: Text("Server Falure"));
        }else{
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context , index){
              return Text("${controller.data}");
          });
        }
      }),
    );
  }
}