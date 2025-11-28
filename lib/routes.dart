import 'package:finalflutterapp/core/constant/routes.dart' show AppRoutes;
import 'package:finalflutterapp/view/screen/auth/login.dart';
import 'package:flutter/cupertino.dart';

Map<String , Widget Function(BuildContext)> routes={
  AppRoutes.login : (context) => Login()
};