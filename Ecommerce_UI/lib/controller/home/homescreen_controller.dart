import 'package:finalflutterapp/view/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  List<Widget> listPages = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Test 1"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Test 2"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Test 3"))],
    ),
  ];

  List titleButtonAppBar = ["Home", "Settings", "Profile", "Favorite"];
  List<IconData> iconButtonAppBar = [
    Icons.home,
    Icons.settings_outlined,
    Icons.person_2_outlined,
    Icons.favorite_outline,
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
