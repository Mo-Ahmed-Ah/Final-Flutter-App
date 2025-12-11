import 'package:finalflutterapp/controller/auth/forgetpassword/resetpassword_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/validinput.dart';
import 'package:finalflutterapp/view/widget/auth/custombuttonautho.dart';
import 'package:finalflutterapp/view/widget/auth/customtextbodyauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextformauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RP".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: AppColor.gray),
        ),
        backgroundColor: AppColor.bgColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) => HandlingDataView(
          statusrequest: controller.statusRequest,
          widget: Form(
            key: controller.formstate,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: ListView(
                children: [
                  const CustomTextTitleAuth(text: "NP"),
                  const SizedBox(height: 10),
                  const CustomTextBodyAuth(text: "ENP"),
                  const SizedBox(height: 15),
                  CustomTextFormAuth(
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    valid: (value) {
                      return validInput(value!, 6, 30, "password");
                    },
                    obscureText: controller.isShowPasswordIcon,
                    isNumber: false,
                    mycontroller: controller.newPassword,
                    icon: controller.passIcon,
                    hintText: "EPW",
                    labelText: "PW",
                  ),
                  CustomTextFormAuth(
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    valid: (value) {
                      return validInput(value!, 6, 30, "password");
                    },
                    obscureText: controller.isShowRePasswordIcon,
                    isNumber: false,
                    mycontroller: controller.reNewPassword,
                    icon: controller.reNewPassIcon,
                    hintText: "REPW",
                    labelText: "PW",
                  ),
                  CustomButtonAutho(
                    text: "S",
                    onPressed: () {
                      controller.resetPassword();
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
