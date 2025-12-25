import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class CustomItemsCardListCard extends StatelessWidget {
  final String itemTitle;
  final String itemPrice;
  final String numberOfItems;
  const CustomItemsCardListCard({
    super.key,
    required this.itemTitle,
    required this.itemPrice,
    required this.numberOfItems,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                title: Text(itemTitle, style: TextStyle(fontSize: 15)),
                subtitle: Text(
                  "${itemPrice}\$",
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 17),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 35,
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ),
                  Container(
                    height: 30,
                    child: Text(
                      numberOfItems,
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
    );
  }
}
