import 'package:finalflutterapp/controller/home/home_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/view/widget/customappbar.dart';
import 'package:finalflutterapp/view/widget/home/customcardhome.dart';
import 'package:finalflutterapp/view/widget/home/customtitlehome.dart';
import 'package:finalflutterapp/view/widget/home/listcategorieshome.dart';
import 'package:finalflutterapp/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataView(
        statusrequest: controller.statusRequest,
        widget: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              CustomAppBar(
                titleAppBar: "Find Product",
                // notificationOnPressed: () {},
                searchOnPressed: () {},
                favoriteOnPressed: () {
                  Get.toNamed(AppRoutes.myFavorites);
                },
              ),
              CustomTitleHome(title: "Categories"),
              CustomCardHome(title: "ASS", body: "CB20"),
              ListCategoriesHome(),
              CustomTitleHome(title: "OFY"),
              ListItemsHome(),
              CustomTitleHome(title: "OFY"),
              ListItemsHome(),
            ],
          ),
        ),
      ),
    );
  }
}
