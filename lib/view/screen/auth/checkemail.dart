import 'package:finalflutterapp/controller/auth/checkEmail_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/auth/custombuttonautho.dart';
import 'package:finalflutterapp/view/widget/auth/customtextbodyauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextformauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FP".tr,
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
            const CustomTextTitleAuth(text: "CE"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(text: "FPT"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              mycontroller: controller.email,
              hintText: "EYE",
              labelText: "E",
              icon: Icons.email_outlined,
            ),
            CustomButtonAutho(text: "C", onPressed: () {controller.goToSccessSignUp();}),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
