import 'package:finalflutterapp/controller/auth/login/login_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/alertexitapp.dart';
import 'package:finalflutterapp/core/functions/validinput.dart';
import 'package:finalflutterapp/view/widget/auth/custombuttonautho.dart';
import 'package:finalflutterapp/view/widget/auth/customtextandaskauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextbodyauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextformauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtexttitleauth.dart';
import 'package:finalflutterapp/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
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
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const LogoAuth(),
                const CustomTextTitleAuth(text: "WB"),
                const SizedBox(height: 10),
                const CustomTextBodyAuth(text: "SIT"),
                const SizedBox(height: 15),
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
                // const SizedBox(height: 20),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormAuth(
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
                ),
                InkWell(
                  child: Text("FP".tr, textAlign: TextAlign.end),
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                ),
                CustomButtonAutho(
                  text: "SI",
                  onPressed: () {
                    controller.login();
                  },
                ),
                SizedBox(height: 30),
                CustomTextAndAskAuth(
                  askTest: "D'THAA",
                  linkText: "SU",
                  onTap: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
