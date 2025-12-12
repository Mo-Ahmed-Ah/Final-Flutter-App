import 'package:finalflutterapp/controller/homescreen_controller.dart';
import 'package:finalflutterapp/view/widget/home/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBarHome extends GetView<HomeScreenControllerImp> {
  const CustomBottomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            children: [
              ...List.generate(controller.listPages.length + 1, (index) {
                int i = index > 2 ? index - 1 : index;
                return index == 2
                    ? const Spacer()
                    : CustomButtonAppBar(
                        buttonTitle: controller.titleButtonAppBar[i],
                        active: controller.currentPage == i ? true : false,
                        iconData: controller.iconButtonAppBar[i],
                        onPressed: () {
                          controller.changePage(i);
                        },
                      );
              }),
            ],
          ),
        );
  }
}