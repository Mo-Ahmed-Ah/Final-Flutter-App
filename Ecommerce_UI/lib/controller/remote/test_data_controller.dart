import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestDataController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var respose = await testData.getData();
    statusRequest = handlingData(respose);
    print(respose);
    if(statusRequest == StatusRequest.success){
      data.addAll(respose["data"]);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
