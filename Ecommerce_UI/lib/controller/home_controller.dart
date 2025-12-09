import 'package:finalflutterapp/core/services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

}

class HomeControllerImp extends HomeController{

MyServices myServices = Get.find();

String? userid;
String? username ;



initialData(){
username = myServices.sharedPreferences.getString('username');
userid = myServices.sharedPreferences.getString('id');
}

@override
  void onInit() {
    initialData();
    super.onInit();
  }

}