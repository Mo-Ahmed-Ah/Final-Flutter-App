import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  final TextEditingController? mycontroller;
  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          hint: Text(hintText.tr),
          hintStyle: TextStyle(fontSize: 14),
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 9),
            child: Text(labelText.tr),
          ),
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
