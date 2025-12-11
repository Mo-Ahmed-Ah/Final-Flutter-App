import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/home_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/home/customeappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
          statusrequest: controller.statusRequest,
          widget: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                CustomeAppBar(
                  titleAppBar: "Find Product",
                  notificationOnPressed: () {},
                  searchOnPressed: () {},
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: ListTile(
                          title: Text(
                            "A summer surprise",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          subtitle: Text(
                            "Cachback 20%",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        height: 150,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: -20,
                        right: -20,
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            color: AppColor.secooundryColor,
                            borderRadius: BorderRadius.circular(160),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemCount: controller.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.thirdColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 70,
                            width: 70,
                            child: SvgPicture.network(
                              color: AppColor.secooundryColor,
                              "${Applink.imageCategories}/${controller.categories[index]['category_image']}",
                            ),
                          ),
                          Text(
                            "${controller.categories[index]['category_name']}",
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "OFY".tr,
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: controller.itmes.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Image.network(
                              "${Applink.imageItems}/${controller.itmes[index]['item_image']}",
                              height: 100,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 120,
                            width: 200,
                          ),
                          Positioned(
                            left: 10,
                            child: Text(
                              "${controller.itmes[index]['item_name']}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
