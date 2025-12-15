import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/home/home_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/translatedatabase.dart';
import 'package:finalflutterapp/data/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoiesModel: CategoiesModel.fromJson(
              controller.categories[index],
            ),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final CategoiesModel categoiesModel;
  final int? i;
  const Categories({super.key, required this.categoiesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
          controller.categories,
          i!,
          categoiesModel.categoryId!.toString(),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.thirdColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: SvgPicture.network(
              color: AppColor.secooundryColor,
              "${Applink.imageCategories}/${categoiesModel.categoryImage}",
            ),
          ),
          Text(
            "${TranslateDataBase(categoiesModel.categoryNameAr, categoiesModel.categoryName)}",
            style: TextStyle(fontSize: 13, color: AppColor.black),
          ),
        ],
      ),
    );
  }
}
