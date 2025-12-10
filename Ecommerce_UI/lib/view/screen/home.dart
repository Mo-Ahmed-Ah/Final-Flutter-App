import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/home_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/constant/color.dart';
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
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Find Product",
                            hintStyle: TextStyle(fontSize: 18),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Colors.grey[200],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 60,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active_outlined,
                            size: 30,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                Container(
                  height: 200,
                  child: ListView.separated(
                    separatorBuilder: (context , index) => SizedBox(width: 10,),
                    itemCount: controller.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(color: AppColor.thirdColor,borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 70,
                        width: 70,
                        child: SvgPicture.network(
                          "${Appilink.imageCategories}/${controller.categories[index]['category_image']}",
                          color: AppColor.secooundryColor,
                        ),
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
