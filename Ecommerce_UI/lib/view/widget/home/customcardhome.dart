import 'package:finalflutterapp/controller/home/home_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomCardHome extends GetView<HomeControllerImp> {
  final String title;
  final String body;
  const CustomCardHome({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: ListTile(
              title: Text(
                title.tr,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                body.tr,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            height: 150,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: -20,
            right: controller.lang == "en" ? -20 : null,
            left: controller.lang == "ar" ? -20 : null,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(158, 192, 58, 43),
                borderRadius: BorderRadius.circular(180),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
