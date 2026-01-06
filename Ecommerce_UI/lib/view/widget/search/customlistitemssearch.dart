import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalflutterapp/apilinks.dart';
import 'package:finalflutterapp/controller/home/home_controller.dart';
import 'package:finalflutterapp/core/functions/translatedatabase.dart';
import 'package:finalflutterapp/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listDataModel;
  const CustomListItemsSearch({super.key, required this.listDataModel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listDataModel.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            controller.goToProductDetailsPage(listDataModel[index]);
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(10),

                child: Row(
                  children: [
                    Expanded(
                      child: CachedNetworkImage(
                        imageUrl:
                            "${Applink.imageItems}/${listDataModel[index].itemImage}",
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          TranslateDataBase(
                            listDataModel[index].itemNameAr,
                            listDataModel[index].itemName,
                          ),
                        ),
                        subtitle: Text(
                          TranslateDataBase(
                            listDataModel[index].categoryNameAr,
                            listDataModel[index].categoryName,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
