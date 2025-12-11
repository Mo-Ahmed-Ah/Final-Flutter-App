class Applink {
  //  ============================== Image Base ===========================================//

  static const String imageBaseLink =
      "http://192.168.1.2/Final-Flutter-App/upload";
  //  ============================== Images ===========================================//
  static const String imageCategories = "${imageBaseLink}/categories";
  static const String imageItems = "${imageBaseLink}/items";

  //  ============================== Server Base ===========================================//
  static const String server =
      "http://192.168.1.2/Final-Flutter-App/Ecommerce_API";
  //  ============================== Test ===========================================//
  static const String test = "$server/test.php";
  //  ============================== Atho ===========================================//
  static const String signup = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verfiyCodeSigunUp = "$server/auth/verifycode.php";

  //  ============================== Forget Password ===========================================//
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String forgetVerfiyCode =
      "$server/forgetpassword/verifycodeforgetpassword.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";

  //  ============================== Home ===========================================//

  static const String homePage = "$server/home.php";
}
