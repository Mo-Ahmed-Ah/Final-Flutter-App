class ItemsModel {
  int? itemId;
  String? itemName;
  String? itemNameAr;
  String? itemDesc;
  String? itemDescAr;
  String? itemImage;
  int? itemCount;
  int? itemPrice;
  int? itemDiscount;
  String? itemDate;
  int? itemActive;
  int? itemCat;
  double? itemPriceDescount;
  int? categoryId;
  String? categoryName;
  String? categoryNameAr;
  String? categoryImage;
  String? categoryDatetime;
  int? favorite;

  ItemsModel({
    this.itemId,
    this.itemName,
    this.itemNameAr,
    this.itemDesc,
    this.itemDescAr,
    this.itemImage,
    this.itemCount,
    this.itemPrice,
    this.itemDiscount,
    this.itemDate,
    this.itemActive,
    this.itemCat,
    this.itemPriceDescount,
    this.categoryId,
    this.categoryName,
    this.categoryNameAr,
    this.categoryImage,
    this.categoryDatetime,
    this.favorite,
  });

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemId = int.tryParse(json['item_id'].toString());
    itemName = json['item_name']?.toString();
    itemNameAr = json['item_name_ar']?.toString();
    itemDesc = json['item_desc']?.toString();
    itemDescAr = json['item_desc_ar']?.toString();
    itemImage = json['item_image']?.toString();

    itemCount = int.tryParse(json['item_count'].toString());
    itemPrice = int.tryParse(json['item_price'].toString());
    itemDiscount = int.tryParse(json['item_discount'].toString());

    itemDate = json['item_date']?.toString();
    itemActive = int.tryParse(json['item_active'].toString());
    itemCat = int.tryParse(json['item_cat'].toString());

    itemPriceDescount = json['item_price_discount'] == null
        ? null
        : double.tryParse(json['item_price_discount'].toString());

    categoryId = int.tryParse(json['category_id'].toString());
    categoryName = json['category_name']?.toString();
    categoryNameAr = json['category_name_ar']?.toString();
    categoryImage = json['category_image']?.toString();
    categoryDatetime = json['category_datetime']?.toString();

    favorite = int.tryParse(json['favorite'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['item_id'] = itemId;
    data['item_name'] = itemName;
    data['item_name_ar'] = itemNameAr;
    data['item_desc'] = itemDesc;
    data['item_desc_ar'] = itemDescAr;
    data['item_image'] = itemImage;
    data['item_count'] = itemCount;
    data['item_price'] = itemPrice;
    data['item_discount'] = itemDiscount;
    data['item_date'] = itemDate;
    data['item_active'] = itemActive;
    data['item_cat'] = itemCat;
    data['item_price_discount'] = itemPriceDescount;
    data['category_id'] = categoryId;
    data['category_name'] = categoryName;
    data['category_name_ar'] = categoryNameAr;
    data['category_image'] = categoryImage;
    data['category_datetime'] = categoryDatetime;
    data['favorite'] = favorite;

    return data;
  }
}
