import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTopCartCart extends StatelessWidget {
  final String fristTitle;
  final String lastTitle;
  final int numberOfItems;

  const CustomTopCartCart({
    super.key,
    required this.fristTitle,
    required this.lastTitle,
    required this.numberOfItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.symmetric(horizontal: 20),
      // height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.thirdColor,
      ),
      child: Text(
        fristTitle.tr + numberOfItems.toString() + lastTitle.tr,
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColor.primaryColor),
      ),
    );
  }
}
