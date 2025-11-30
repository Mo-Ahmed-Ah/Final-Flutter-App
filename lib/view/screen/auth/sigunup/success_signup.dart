import 'package:finalflutterapp/controller/auth/sigunup/successsignup_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/auth/custombuttonautho.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SSU".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: AppColor.gray),
        ),
        backgroundColor: AppColor.bgColor,
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            Text("CON".tr ,  style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 30)),
            Text("SR".tr),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAutho(text: "GRL", onPressed: () {
                controller.goToPageLogin();
              }),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
