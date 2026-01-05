import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CustomAppBar extends StatelessWidget {
  final String titleAppBar;
  // final void Function()? notificationOnPressed;
  final void Function()? searchOnPressed;
  final void Function()? favoriteOnPressed;
  final void Function(String)? onChanged;
  final TextEditingController myController;
  const CustomAppBar({
    super.key,
    required this.titleAppBar,
    // this.notificationOnPressed,
    this.searchOnPressed,
    required this.favoriteOnPressed,
    this.onChanged,
    required this.myController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: myController,
              onChanged: onChanged,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: searchOnPressed,
                  icon: Icon(Icons.search),
                ),
                hintText: titleAppBar.tr,
                hintStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // SizedBox(width: 10),
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.grey[200],
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   width: 60,
          //   padding: EdgeInsets.symmetric(vertical: 8),
          //   child: IconButton(
          //     onPressed: notificationOnPressed,
          //     icon: Icon(
          //       Icons.notifications_active_outlined,
          //       size: 30,
          //       color: Colors.grey[600],
          //     ),
          //   ),
          // ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 60,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: favoriteOnPressed,
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
