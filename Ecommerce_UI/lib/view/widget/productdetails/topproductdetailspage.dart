import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/product/productdetails_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopProductDetailsPage extends GetView<ProductDetailsControllerImp> {
  const TopProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(color: AppColor.secooundryColor),
        ),
        Positioned(
          top: 30.0,
          right: Get.width / 8,
          left: Get.width / 8,
          child: Hero(
            tag: "${controller.itemsModel.itemId}",
            child: CachedNetworkImage(
              imageUrl:
                  "${Applink.imageItems}/${controller.itemsModel.itemImage!}",
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
