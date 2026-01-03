import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomItemsCardListCard extends StatelessWidget {
  final String itemTitle;
  final String itemPrice;
  final String numberOfItems;
  final String? imageUrl;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const CustomItemsCardListCard({
    super.key,
    required this.itemTitle,
    required this.itemPrice,
    required this.numberOfItems,
    this.imageUrl,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: CachedNetworkImage(
                  imageUrl: imageUrl == null
                      ? "${Applink.defaultImageItems}/product.png"
                      : "${Applink.imageItems}/$imageUrl",
                  height: 80,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(itemTitle, style: TextStyle(fontSize: 15)),
                subtitle: Text(
                  "$itemPrice\$",
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 17),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 35,
                    child: IconButton(onPressed: onAdd, icon: Icon(Icons.add)),
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
                      onPressed: onRemove,
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
