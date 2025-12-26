import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class PriceAndCount extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String price;
  final String count;
  PriceAndCount({
    super.key,
    required this.onAdd,
    required this.onRemove,
    required this.price,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(onPressed: onAdd, icon: Icon(Icons.add)),
            Container(
              alignment: Alignment.center,
              width: 50,
              // height: 30,
              padding: EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Text(count, style: TextStyle(fontSize: 20, height: 1.1)),
            ),
            IconButton(onPressed: onRemove, icon: Icon(Icons.remove)),
          ],
        ),
        Spacer(),
        Text(
          "${price}\$",
          style: TextStyle(
            color: AppColor.primaryColor,
            fontSize: 30,
            height: 1.1,
          ),
        ),
      ],
    );
  }
}
