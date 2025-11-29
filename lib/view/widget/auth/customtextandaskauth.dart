import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomTextAndAskAuth extends StatelessWidget {
  final String askTest;
  final String linkText;
  final void Function()? onTap;
  const CustomTextAndAskAuth({super.key, required this.askTest, required this.linkText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(askTest.tr),
        InkWell(
          onTap: onTap,
          child: Text(
            linkText.tr,
            style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
