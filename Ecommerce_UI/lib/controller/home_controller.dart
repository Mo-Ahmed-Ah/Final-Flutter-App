import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? userid;
  String? username;
  HomeData homeData = HomeData(Get.find());

  List data = [];
  List categories = [];
  List itmes = [];
  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString('username');
    userid = myServices.sharedPreferences.getString('id');
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var respose = await homeData.getData();
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        categories.addAll(respose["categories"]);
        itmes.addAll(respose["items"]);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    initialData();
    super.onInit();
  }
}
