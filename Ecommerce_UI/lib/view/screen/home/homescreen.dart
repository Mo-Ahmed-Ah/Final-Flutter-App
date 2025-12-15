import 'package:finalflutterapp/controller/home/homescreen_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          onPressed: () {},
          child: Icon(Icons.shopping_basket_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomAppBarHome(),
        body: controller.listPages.elementAt(controller.currentPage),
        // bottomNavigationBar: ,
      ),
    );
  }
}
