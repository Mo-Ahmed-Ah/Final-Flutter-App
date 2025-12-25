import 'package:finalflutterapp/view/widget/cart/customappbarcart.dart';
import 'package:finalflutterapp/view/widget/cart/custombottomnavigationbarcard.dart';
import 'package:finalflutterapp/view/widget/cart/customitemscardlistcard.dart';
import 'package:finalflutterapp/view/widget/cart/customtopcartcart.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBarCard(
        priceValue: 1200,
        shippingValue: 200,
      ),
      body: ListView(
        children: [
          CustomAppBarCart(title: "My Cart"),
          SizedBox(height: 10),
          CustomTopCartCart(
            fristTitle: "You Have ",
            lastTitle: " Items in Your List",
            numberOfItems: 3,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CustomItemsCardListCard(
                  itemTitle: "Macbook M2 Pro Max",
                  itemPrice: "300.0",
                  numberOfItems: "2",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
