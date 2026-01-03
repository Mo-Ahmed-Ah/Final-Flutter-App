class Applink {
  //  ============================== All Base ===========================================//
  static const String baseLink = "http://192.168.1.7";

  //  ============================== Image Base ===========================================//
  static const String imageBaseLink = "${baseLink}/Final-Flutter-App/upload";

  //  ============================== Images ===========================================//
  static const String imageCategories = "${imageBaseLink}/categories";
  static const String imageItems = "${imageBaseLink}/items";
  static const String defaultImageItems = "${imageBaseLink}/default";

  //  ============================== Server Base ===========================================//
  static const String server = "${baseLink}/Final-Flutter-App/Ecommerce_API";

  //  ============================== Test ===========================================//
  static const String test = "$server/test.php";

  //  ============================== Atho ===========================================//
  static const String signup = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verfiyCodeSigunUp = "$server/auth/verifycode.php";
  static const String reSendVerfiyCodeSigunUp =
      "$server/auth/resendverifycode.php";

  //  ============================== Forget Password ===========================================//
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String forgetVerfiyCode =
      "$server/forgetpassword/verifycodeforgetpassword.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";

  //  ============================== Home ===========================================//
  static const String homePage = "$server/home.php";

  //  ============================== Items ===========================================//
  static const String items = "$server/items/items.php";

  //  ============================== Favorites ===========================================//
  static const String addItemToFavorite = "$server/favorite/add.php";
  static const String removeItemFromFavorite = "$server/favorite/remove.php";
  static const String viewFavorite = "$server/favorite/view.php";
  static const String deleteFavorite =
      "$server/favorite/deletefromfavorite.php";

  //  ============================== Carts ===========================================//
  static const String viewCart = "$server/cart/view.php";
  static const String addItemToCart = "$server/cart/add.php";
  static const String removeItemFromCart = "$server/cart/delete.php";
  static const String getCountItemsFromCart = "$server/cart/getcountitems.php";
}
