import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/view/widget/cart/custombuttoncart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBarCard extends StatelessWidget {
  final String priceValue;
  final String shippingValue;
  final String totalPrice;

  const CustomBottomNavigationBarCard({
    super.key,
    required this.priceValue,
    required this.shippingValue,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Price".tr, style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),

                child: Text("${priceValue}\$", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Shipping".tr, style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),

                child: Text(
                  "${shippingValue}\$",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Total".tr,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),

                child: Text(
                  "${totalPrice}\$",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomButtonCart(textButton: "place Order".tr, onPressed: () {}),
        ],
      ),
    );
  }
}
