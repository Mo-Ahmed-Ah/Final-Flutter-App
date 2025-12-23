import 'package:finalflutterapp/view/screen/home/home.dart';
import 'package:finalflutterapp/view/screen/settings/sittingns.dart';
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
    Settings(),
  ];

  List buttonAppBar = [
    {'title': "Home", 'icon': Icons.home},
    {'title': "card", 'icon': Icons.notifications_outlined},
    {'title': "Profile", 'icon': Icons.person_2_outlined},
    {'title': "Settings", 'icon': Icons.settings_outlined},
  ];
  // List<IconData> iconButtonAppBar = [
  //   Icons.home,
  //   Icons.settings_outlined,
  //   Icons.person_2_outlined,
  //   Icons.favorite_outline,
  // ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
