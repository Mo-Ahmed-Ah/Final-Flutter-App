import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Address".tr)),
      body: Container(child: ListView(
        children: [],
      ),),
    );
  }
}
