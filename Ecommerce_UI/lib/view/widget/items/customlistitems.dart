import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/items/items_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/translatedatabase.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToProductDetailsPage(itemsModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: "${itemsModel.itemId}",
                child: CachedNetworkImage(
                  height: 110,
                  width: 300,
                  fit: BoxFit.fill,
                  // ignore: prefer_interpolation_to_compose_strings
                  imageUrl: Applink.imageItems + "/" + itemsModel.itemImage!,
                ),
              ),
              SizedBox(height: 5),
              Text(
                TranslateDataBase(itemsModel.itemNameAr, itemsModel.itemName),
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating".tr + " 3.5",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(Icons.star, size: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${itemsModel.itemPrice} \$",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sans',
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    // icon: Icon(Icons.favorite_border_outlined),
                    icon: Icon(Icons.favorite, color: AppColor.primaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
