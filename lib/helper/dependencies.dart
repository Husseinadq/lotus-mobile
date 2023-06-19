import 'package:get/get.dart';
import 'package:lotus/controller/popular_product_controller.dart';
import 'package:lotus/data/api/api_clint.dart';
import 'package:lotus/data/repository/popular_product_repo.dart';
import 'package:lotus/utils/app_constants.dart';

Future<void> init() async {
//api clint
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

//repos
  Get.lazyPut(() => PopularProductRepo(
      apiClient:
          Get.find())); //it will find the api client if it is the same name

//controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
