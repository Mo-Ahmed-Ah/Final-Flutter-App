import 'package:finalflutterapp/controller/favorite/myfavforite_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/view/widget/customappbar.dart';
import 'package:finalflutterapp/view/widget/favorites/customlistfavoritiesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorites extends StatelessWidget {
  const MyFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
          builder: (controller) => ListView(
            children: [
              CustomAppBar(
                titleAppBar: "Find Product",
                notificationOnPressed: () {},
                searchOnPressed: () {},
                favoriteOnPressed: () {
                  Get.toNamed(AppRoutes.myFavorites);
                },
              ),
              SizedBox(height: 20),
              HandlingDataView(
                statusrequest: controller.statusRequest,
                widget: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return CustomListFavoritiesItems(
                      itemsModel: controller.data[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
