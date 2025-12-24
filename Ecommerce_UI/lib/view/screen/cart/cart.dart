import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/constant/imageasset.dart';
import 'package:finalflutterapp/view/widget/cart/custombuttoncart.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Price", style: TextStyle(fontSize: 16)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),

                  child: Text("1200\$", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Shipping", style: TextStyle(fontSize: 16)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),

                  child: Text("300\$", style: TextStyle(fontSize: 16)),
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
                    "Total",
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
                    "1500\$",
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
            CustomButtonCart(textButton: "place Order", onPressed: () {}),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "My Cart",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            margin: EdgeInsets.symmetric(horizontal: 20),
            // height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.thirdColor,
            ),
            child: Text(
              "You Have 2 Items in Your List",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColor.primaryColor),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            AppImageAsset.avatar,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text(
                              "MackBook M2 Max",
                              style: TextStyle(fontSize: 15),
                            ),
                            subtitle: Text(
                              "300\$",
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 35,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                ),
                              ),
                              Container(
                                height: 30,
                                child: Text(
                                  "2",
                                  style: TextStyle(fontFamily: 'sans'),
                                ),
                              ),
                              Container(
                                height: 25,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            AppImageAsset.avatar,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text(
                              "MackBook M2 Max",
                              style: TextStyle(fontSize: 15),
                            ),
                            subtitle: Text(
                              "300\$",
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 35,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                ),
                              ),
                              Container(
                                height: 30,
                                child: Text(
                                  "2",
                                  style: TextStyle(fontFamily: 'sans'),
                                ),
                              ),
                              Container(
                                height: 25,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
