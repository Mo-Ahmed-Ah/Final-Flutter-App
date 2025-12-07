import 'package:finalflutterapp/controller/auth/sigunup/signup_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/alertexitapp.dart';
import 'package:finalflutterapp/core/functions/validinput.dart';
import 'package:finalflutterapp/view/widget/auth/custombuttonautho.dart';
import 'package:finalflutterapp/view/widget/auth/customtextandaskauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextbodyauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextformauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignupControllerImp());
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
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignupControllerImp>(
          builder: (controller) => HandlingDataView(
            statusrequest: controller.statusRequest,
            widget: Container(
              child: Form(
                key: controller.formstate,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30,
                  ),
                  child: ListView(
                    children: [
                      const CustomTextTitleAuth(text: "WB"),
                      const SizedBox(height: 10),
                      const CustomTextBodyAuth(text: "SUT"),
                      const SizedBox(height: 15),
                      CustomTextFormAuth(
                        valid: (value) {
                          return validInput(value!, 5, 30, "username");
                        },
                        isNumber: false,
                        mycontroller: controller.userName,
                        hintText: "EYUN",
                        labelText: "UN",
                        icon: Icons.person_2_outlined,
                      ),
                      CustomTextFormAuth(
                        valid: (value) {
                          return validInput(value!, 5, 100, "email");
                        },
                        isNumber: false,
                        mycontroller: controller.email,
                        hintText: "EYE",
                        labelText: "E",
                        icon: Icons.email_outlined,
                      ),
                      CustomTextFormAuth(
                        valid: (value) {
                          return validInput(value!, 11, 15, "phone");
                        },
                        isNumber: true,
                        mycontroller: controller.phoneNumber,
                        hintText: "EYPN",
                        labelText: "PN",
                        icon: Icons.phone_android_outlined,
                      ),
                      // const SizedBox(height: 20),
                      CustomTextFormAuth(
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        valid: (value) {
                          return validInput(value!, 6, 30, "password");
                        },
                        obscureText: controller.isShowIcon,
                        isNumber: false,
                        mycontroller: controller.password,
                        icon: controller.passIcon,
                        hintText: "EPW",
                        labelText: "PW",
                      ),
                      CustomButtonAutho(
                        text: "SU",
                        onPressed: () {
                          controller.signUp();
                        },
                      ),
                      SizedBox(height: 30),
                      CustomTextAndAskAuth(
                        askTest: "HAA",
                        linkText: "SI",
                        onTap: () {
                          controller.goToSignIn();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
