import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CustomButtonAutho extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAutho({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        padding: EdgeInsets.symmetric(vertical: 15),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(text.tr , style: TextStyle(fontFamily:"PlayfairDisplay" , fontSize: 18 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}
