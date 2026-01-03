import 'package:finalflutterapp/controller/cart/cart_controller.dart';
import 'package:finalflutterapp/core/class/handlingdataview.dart';
import 'package:finalflutterapp/core/functions/translatedatabase.dart';
import 'package:finalflutterapp/view/widget/cart/customappbarcart.dart';
import 'package:finalflutterapp/view/widget/cart/custombottomnavigationbarcard.dart';
import 'package:finalflutterapp/view/widget/cart/customitemscardlistcard.dart';
import 'package:finalflutterapp/view/widget/cart/customtopcartcart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      bottomNavigationBar: GetBuilder<CartController>(
        builder: (controller) => CustomBottomNavigationBarCard(
          priceValue: "${cartController.priceOrdeds}",
          shippingValue: "200",
          totalPrice: "1500",
        ),
      ),
      body: GetBuilder<CartController>(
        builder: (controller) => HandlingDataView(
          statusrequest: controller.statusRequest,
          widget: ListView(
            children: [
              CustomAppBarCart(title: "My Cart"),
              SizedBox(height: 10),
              CustomTopCartCart(
                fristTitle: "You Have ",
                lastTitle: controller.totalCountItems > 1
                    ? " Items in Your List"
                    : " Item in Your List",
                numberOfItems: controller.totalCountItems,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    ...List.generate(
                      controller.data.length,
                      (index) => CustomItemsCardListCard(
                        onAdd: () {
                          cartController.add(
                            controller.data[index].itemId!.toString(),
                          );
                          cartController.refreshPage();
                        },
                        onRemove: () {
                          cartController.delete(
                            controller.data[index].itemId!.toString(),
                          );
                          cartController.refreshPage();
                        },
                        imageUrl: controller.data[index].itemImage,
                        itemTitle:
                            "${TranslateDataBase(cartController.data[index].itemNameAr, cartController.data[index].itemName)}",
                        itemPrice: "${cartController.data[index].itemsPrice}",
                        numberOfItems:
                            "${cartController.data[index].itemsCount}",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
