class MyFavoritesModel {
  int? favoriteId;
  int? favoriteUserId;
  int? favoriteItemId;
  String? favoriteDatetime;
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
  int? userId;

  MyFavoritesModel({
    this.favoriteId,
    this.favoriteUserId,
    this.favoriteItemId,
    this.favoriteDatetime,
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
    this.userId,
  });

  MyFavoritesModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favorite_id'];
    favoriteUserId = json['favorite_user_id'];
    favoriteItemId = json['favorite_item_id'];
    favoriteDatetime = json['favorite_datetime'];
    itemId = json['item_id'];
    itemName = json['item_name'];
    itemNameAr = json['item_name_ar'];
    itemDesc = json['item_desc'];
    itemDescAr = json['item_desc_ar'];
    itemImage = json['item_image'];
    itemCount = json['item_count'];
    itemPrice = json['item_price'];
    itemDiscount = json['item_discount'];
    itemDate = json['item_date'];
    itemActive = json['item_active'];
    itemCat = json['item_cat'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorite_id'] = this.favoriteId;
    data['favorite_user_id'] = this.favoriteUserId;
    data['favorite_item_id'] = this.favoriteItemId;
    data['favorite_datetime'] = this.favoriteDatetime;
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['item_name_ar'] = this.itemNameAr;
    data['item_desc'] = this.itemDesc;
    data['item_desc_ar'] = this.itemDescAr;
    data['item_image'] = this.itemImage;
    data['item_count'] = this.itemCount;
    data['item_price'] = this.itemPrice;
    data['item_discount'] = this.itemDiscount;
    data['item_date'] = this.itemDate;
    data['item_active'] = this.itemActive;
    data['item_cat'] = this.itemCat;
    data['user_id'] = this.userId;
    return data;
  }
}
