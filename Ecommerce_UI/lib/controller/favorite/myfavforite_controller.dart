import 'package:finalflutterapp/core/class/statusrequest.dart';
import 'package:finalflutterapp/core/functions/handlingdata_controller.dart';
import 'package:finalflutterapp/core/services/services.dart';
import 'package:finalflutterapp/data/datasource/remote/myfavorite_data.dart';
import 'package:finalflutterapp/data/model/myfavorites_model.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController {
  MyFavoriteData favoriteData = MyFavoriteData(Get.find());

  List<MyFavoritesModel> data = [];
  late StatusRequest statusRequest;

  List categories = [];
  int? selectedCat;
  String? categoryID;

  MyServices myServices = Get.find();

  deleteFromFavorite(String favoriteid) {
    favoriteData.deleteData(favoriteid).then((response) {
      if (response["status"] == "success") {
        data.removeWhere(
          (element) => element.favoriteId.toString() == favoriteid,
        );
        update();
      }
    });
  }

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var respose = await favoriteData.getData(
      myServices.sharedPreferences.getString("id")!,
    );
    statusRequest = handlingData(respose);
    print(respose);
    if (statusRequest == StatusRequest.success) {
      if (respose["status"] == "success") {
        List responsData = respose['data'];
        data.addAll(responsData.map((e) => MyFavoritesModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
