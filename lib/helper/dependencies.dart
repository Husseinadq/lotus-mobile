import 'package:get/get.dart';
import 'package:lotus/controller/popular_product_controller.dart';
import 'package:lotus/data/api/api_clint.dart';
import 'package:lotus/data/repository/popular_product_repo.dart';
import 'package:lotus/utils/app_constants.dart';

import '../controller/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
//api clint
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

//repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
    Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));


//controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}
