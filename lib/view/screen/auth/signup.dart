import 'package:finalflutterapp/controller/auth/signup_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/auth/custombuttonautho.dart';
import 'package:finalflutterapp/view/widget/auth/customtextandaskauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextbodyauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextformauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtexttitleauth.dart';
import 'package:finalflutterapp/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SU".tr,
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
            const CustomTextTitleAuth(text: "WB"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(text: "SYT"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              mycontroller: controller.userName,
              hintText: "EYUN",
              labelText: "UN",
              icon: Icons.person_2_outlined,
            ),
            CustomTextFormAuth(
              mycontroller: controller.email,
              hintText: "EYE",
              labelText: "E",
              icon: Icons.email_outlined,
            ),
            CustomTextFormAuth(
              mycontroller: controller.phoneNumber,
              hintText: "EYPN",
              labelText: "PN",
              icon: Icons.phone_android_outlined,
            ),
            // const SizedBox(height: 20),
            CustomTextFormAuth(
              mycontroller: controller.password,
              hintText: "EPW",
              labelText: "PW",
              icon: Icons.lock_outline,
            ),
            CustomButtonAutho(text: "SU", onPressed: () {}),
            SizedBox(height: 30),
            CustomTextAndAskAuth(
              askTest: "HAA",
              linkText: "SI",
              onTap: () {
                controller.goToSignUp();
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
