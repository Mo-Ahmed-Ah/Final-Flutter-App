import 'package:finalflutterapp/controller/items/items_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:finalflutterapp/view/widget/customappbar.dart';
import 'package:finalflutterapp/view/widget/items/customlistitems.dart';
import 'package:finalflutterapp/view/widget/items/listcategoriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
              titleAppBar: "Find Product",
              notificationOnPressed: () {},
              searchOnPressed: () {},
            ),

            const SizedBox(height: 20),
            const ListCategoriesItems(),
            GetBuilder<ItemsControllerImp>(
              init: ItemsControllerImp(),
              builder: (controller) => HandlingDataView(
                statusrequest: controller.statusRequest,
                widget: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return CustomListItems(
                      // active : true,
                      itemsModel: ItemsModel.fromJson(controller.data[index]),
              
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
