import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';


class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        textColor: Colors.white,
        onPressed: () {},
        color: AppColor.primaryColor,
        child: Text("Continue"),
      ),
    );
  }
}
