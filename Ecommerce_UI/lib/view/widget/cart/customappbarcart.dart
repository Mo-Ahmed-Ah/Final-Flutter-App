import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarCart extends StatelessWidget {
  final String title;
  const CustomAppBarCart({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title.tr,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
