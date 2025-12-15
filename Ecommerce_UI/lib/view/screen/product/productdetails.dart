import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/product/productdetails_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/translatedatabase.dart';
import 'package:finalflutterapp/view/widget/ptofuctdetails/priceandcount.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller = Get.put(
      ProductDetailsControllerImp(),
    );
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 40,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
          color: AppColor.secooundryColor,
          onPressed: () {},
          child: Text(
            "ATC".tr,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
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
                        Applink.imageItems +
                        "/" +
                        controller.itemsModel.itemImage!,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${TranslateDataBase(controller.itemsModel.itemNameAr, controller.itemsModel.itemName)}",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: AppColor.fourthColor,
                  ),
                ),

                // SizedBox(height: 10),
                Text(
                  "${TranslateDataBase(controller.itemsModel.itemDescAr, controller.itemsModel.itemDesc)}",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 10),
                PriceAndCount(
                  onAdd: () {},
                  onRemove: () {},
                  price: controller.itemsModel.itemPrice!.toString(),
                  count: "22",
                ),
                SizedBox(height: 10),
                Text(
                  "Color",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: AppColor.fourthColor,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.fourthColor,
                      ),
                      child: Text(
                        "Red",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Black",
                        style: TextStyle(
                          color: AppColor.fourthColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.fourthColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Blue",
                        style: TextStyle(
                          color: AppColor.fourthColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
