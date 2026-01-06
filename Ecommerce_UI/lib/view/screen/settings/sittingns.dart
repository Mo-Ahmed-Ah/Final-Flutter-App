import 'package:finalflutterapp/controller/settings/settings_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/constant/imageasset.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());

    return Container(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(height: Get.width / 3, color: AppColor.primaryColor),
              Positioned(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: AssetImage(AppImageAsset.avatar),
                  ),
                ),
                top: Get.width / 4.9,
              ),
            ],
          ),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    // onTap: () {},
                    title: Text('Diabale Notifications'.tr),
                    trailing: Switch(onChanged: (val) {}, value: true),
                  ),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoutes.addressView);
                    },
                    title: Text('Address'.tr),
                    trailing: Icon(Icons.location_on_outlined),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('About us'.tr),
                    trailing: Icon(Icons.help_outline),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text('Contact us'.tr),
                    trailing: Icon(Icons.phone_callback_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      controller.logout();
                    },
                    title: Text('Logout'),
                    trailing: Icon(Icons.exit_to_app),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
