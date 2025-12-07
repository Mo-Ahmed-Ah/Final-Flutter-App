import 'package:finalflutterapp/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/validinput.dart';
import 'package:finalflutterapp/view/widget/auth/custombuttonautho.dart';
import 'package:finalflutterapp/view/widget/auth/customtextbodyauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtextformauth.dart';
import 'package:finalflutterapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetpasswordControllerImp controller = Get.put(
      ForgetpasswordControllerImp(),
    );
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
      body: GetBuilder<ForgetpasswordControllerImp>(
        builder: (controller) =>
            controller.statusRequest == StatusRequest.loading
            ? Center(child: Text("Lodaing"))
            : Form(
                key: controller.formstate,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30,
                  ),
                  child: ListView(
                    children: [
                      const CustomTextTitleAuth(text: "CE"),
                      const SizedBox(height: 10),
                      const CustomTextBodyAuth(text: "FPT"),
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
                      CustomButtonAutho(
                        text: "C",
                        onPressed: () {
                          controller.checkemail();
                        },
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
