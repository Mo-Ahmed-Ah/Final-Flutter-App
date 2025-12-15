
import 'package:finalflutterapp/controller/items/items_controller.dart';
import 'package:finalflutterapp/core/constant/color.dart';
import 'package:finalflutterapp/core/functions/translatedatabase.dart';
import 'package:finalflutterapp/data/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
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

class Categories extends GetView<ItemsControllerImp> {
  final CategoiesModel categoiesModel;
  final int? i;
  const Categories({super.key, required this.categoiesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToItems(controller.categories, i!);
        controller.changeCat(i!, categoiesModel.categoryId!.toString());
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => Container(
              padding: EdgeInsets.only(right: 5, bottom: 5, left: 5),
              decoration: controller.selectedCat == i
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 3,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    )
                  : null,
              child: Text(
                "${TranslateDataBase(categoiesModel.categoryNameAr, categoiesModel.categoryName)}",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.darkGray,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
