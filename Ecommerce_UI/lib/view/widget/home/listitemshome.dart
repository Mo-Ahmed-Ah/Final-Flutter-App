import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/home/home_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemCount: controller.itmes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ItemsHome(
            itemsModel: ItemsModel.fromJson(controller.itmes[index]),
          );
        },
      ),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Image.network(
            "${Applink.imageItems}/${itemsModel.itemImage}",
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
            "${itemsModel.itemName}",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
