import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final bool isNumber;
  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
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
