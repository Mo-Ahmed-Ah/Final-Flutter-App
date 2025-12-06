import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CustomTextBodyVeriyCodeSignup extends StatelessWidget {
  final String text;
  final String email;
  const CustomTextBodyVeriyCodeSignup({super.key, required this.text , required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(
              text.tr + email,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
    );
  }
}