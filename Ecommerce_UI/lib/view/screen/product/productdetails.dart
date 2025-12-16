import 'package:finalflutterapp/controller/product/productdetails_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/translatedatabase.dart';
import 'package:finalflutterapp/view/widget/productdetails/topproductdetailspage.dart';
import 'package:finalflutterapp/view/widget/ptofuctdetails/priceandcount.dart';
import 'package:finalflutterapp/view/widget/ptofuctdetails/subitemslist.dart';
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
          TopProductDetailsPage(),
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
                PriceAndCount(
                  onAdd: () {},
                  onRemove: () {},
                  price: controller.itemsModel.itemPrice!.toString(),
                  count: "22",
                ),
                // SizedBox(height: 10),
                Text(
                  "${TranslateDataBase(controller.itemsModel.itemDescAr, controller.itemsModel.itemDesc)}",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 10),
                SizedBox(height: 10),
                Text(
                  "Color",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: AppColor.fourthColor,
                  ),
                ),
                SizedBox(height: 10),
                SubItemsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
