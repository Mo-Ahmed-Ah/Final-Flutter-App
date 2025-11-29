import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/auth/customtextbodyauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextformauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SI".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: AppColor.gray),
        ),
        backgroundColor: AppColor.bgColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "WB"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(text: "SIT"),
            const SizedBox(height: 65),
            CustomTextFormAuth(
              hintText: "EYE",
              labelText: "E",
              icon: Icons.email_outlined,
            ),
            // const SizedBox(height: 20),
            CustomTextFormAuth(
              hintText: "EPW",
              labelText: "PW",
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
