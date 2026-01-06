class CartModel {
  int? itemsPrice;
  int? itemsCount;
  int? cardId;
  int? cartUserId;
  int? cartItemId;
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

  CartModel({
    this.itemsPrice,
    this.itemsCount,
    this.cardId,
    this.cartUserId,
    this.cartItemId,
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
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    itemsPrice = json['itemPrice'];
    itemsCount = json['itemsCount'];
    cardId = json['card_id'];
    cartUserId = json['cart_user_id'];
    cartItemId = json['cart_item_id'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemsPrice'] = this.itemsPrice;
    data['itemsCount'] = this.itemsCount;
    data['card_id'] = this.cardId;
    data['cart_user_id'] = this.cartUserId;
    data['cart_item_id'] = this.cartItemId;
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
    return data;
  }
}
