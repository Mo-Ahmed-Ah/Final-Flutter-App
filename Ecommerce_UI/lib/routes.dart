import 'package:finalflutterapp/core/constant/routes.dart';
import 'package:finalflutterapp/core/middleware/mymiddleware.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/sccess_resetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:finalflutterapp/view/screen/auth/login/login.dart';
import 'package:finalflutterapp/view/screen/auth/sigunup/signup.dart';
import 'package:finalflutterapp/view/screen/auth/sigunup/success_signup.dart';
import 'package:finalflutterapp/view/screen/auth/sigunup/verifycodesignup.dart';
import 'package:finalflutterapp/view/screen/cart/cart.dart';
import 'package:finalflutterapp/view/screen/favorites/myfavorite.dart';
import 'package:finalflutterapp/view/screen/home/homescreen.dart';
import 'package:finalflutterapp/view/screen/items/items.dart';
import 'package:finalflutterapp/view/screen/language/language.dart';
import 'package:finalflutterapp/view/screen/onboarding/onboarding.dart';
import 'package:finalflutterapp/view/screen/product/productdetails.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const Language(),
    middlewares: [MyMiddleWare()],
  ),
  // GetPage(name: "/", page: () => Cart()),
  // GetPage(name: "/", page: () => TestView()),
  // Auth Routes
  GetPage(name: AppRoutes.login, page: () => Login()),
  GetPage(name: AppRoutes.signUp, page: () => Signup()),
  GetPage(name: AppRoutes.forgetpassword, page: () => Forgetpassword()),
  GetPage(name: AppRoutes.verfiyCodeResetPassword, page: () => VerfiyCode()),
  GetPage(name: AppRoutes.resetpassword, page: () => ResetPassword()),
  GetPage(
    name: AppRoutes.successresetpasword,
    page: () => SuccessResetPasword(),
  ),
  GetPage(name: AppRoutes.successsignup, page: () => SuccessSignup()),
  // OnBoarding Routes
  GetPage(name: AppRoutes.onBoarding, page: () => OnBoarding()),
  GetPage(
    name: AppRoutes.verificationCodeSigunUp,
    page: () => VerfiyCodeSigunUp(),
  ),

  // Home Route
  GetPage(name: AppRoutes.home, page: () => HomeScreen()),

  // Items Route
  GetPage(name: AppRoutes.items, page: () => Items()),

  // Items Details Route
  GetPage(name: AppRoutes.productDetails, page: () => ProductDetails()),
  // My Favroites Route
  GetPage(name: AppRoutes.myFavorites, page: () => MyFavorites()),
];
