import 'package:finalflutterapp/core/constant/routes.dart' show AppRoutes;
import 'package:finalflutterapp/core/middleware/mymiddleware.dart';
// import 'package:finalflutterapp/test.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/login/login.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/sigunup/signup.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/sccess_resetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/sigunup/success_signup.dart';
import 'package:finalflutterapp/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:finalflutterapp/view/screen/auth/sigunup/verifycodesignup.dart';
import 'package:finalflutterapp/view/screen/home.dart';
import 'package:finalflutterapp/view/screen/language.dart';
import 'package:finalflutterapp/view/screen/onboarding.dart';
// import 'package:finalflutterapp/view/test/test_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const Language(),
    middlewares: [MyMiddleWare()],
  ),

  // GetPage(name: "/", page: () => Test()),
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

  // Home Routes
  GetPage(name: AppRoutes.home, page: () => Home()),
];
