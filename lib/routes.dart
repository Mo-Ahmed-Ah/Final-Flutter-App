import 'package:finalflutterapp/core/constant/routes.dart' show AppRoutes;
import 'package:finalflutterapp/view/screen/auth/forgetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/login.dart';
import 'package:finalflutterapp/view/screen/auth/resetpassword.dart';
import 'package:finalflutterapp/view/screen/auth/signup.dart';
import 'package:finalflutterapp/view/screen/auth/verfiycode.dart';
import 'package:finalflutterapp/view/screen/onboarding.dart';
import 'package:flutter/cupertino.dart';

Map<String , Widget Function(BuildContext)> routes={
  // Auth Routes
  AppRoutes.login : (context) => Login(),
  AppRoutes.signUp : (context) => Signup(),
  AppRoutes.forgetpassword : (context) => Forgetpassword(),
  AppRoutes.verfiycode : (context) => VerfiyCode(),
  AppRoutes.resetpassword : (context) => ResetPassword(),
  // OnBoarding Routes 
  AppRoutes.onBoarding : (context) => OnBoarding(),
};