import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

// ignore: must_be_immutable
class CustomButtonAppBar extends StatelessWidget {
  final String buttonTitle;
  final void Function()? onPressed;
  final IconData iconData;
  bool active;

  CustomButtonAppBar({
    super.key,
    required this.buttonTitle,
    required this.iconData,
    this.onPressed,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: active == true ? AppColor.primaryColor : AppColor.black,
          ),
          Text(
            buttonTitle.tr,
            style: TextStyle(
              color: active == true ? AppColor.primaryColor : AppColor.black,
              
            ),
          ),
        ],
      ),
    );
  }
}
