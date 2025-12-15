import 'package:finalflutterapp/controller/product/productdetails_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
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
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
