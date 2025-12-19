import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorites extends StatelessWidget {
  const MyFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            CustomAppBar(
              titleAppBar: "Find Product",
              notificationOnPressed: () {},
              searchOnPressed: () {},
              favoriteOnPressed: () {
                Get.toNamed(AppRoutes.myFavorites);
              },
            ),
          ],
        ),
      ),
    );
  }
}
