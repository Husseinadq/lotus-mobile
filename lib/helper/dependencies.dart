import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/controller/category_controller.dart';
import 'package:lotus/controller/popular_product_controller.dart';
import 'package:lotus/controller/product_controller.dart';
import 'package:lotus/controller/user_controller.dart';
import 'package:lotus/controller/wishlist_controller.dart';
import 'package:lotus/data/api/api_clint.dart';
import 'package:lotus/data/repository/cart_repo.dart';
import 'package:lotus/data/repository/category_repo.dart';
import 'package:lotus/data/repository/popular_product_repo.dart';
import 'package:lotus/data/repository/product_repo.dart';
import 'package:lotus/data/repository/user_repo.dart';
import 'package:lotus/data/repository/wishlist_repo.dart';
import 'package:lotus/utils/app_constants.dart';

import '../controller/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
//api clint
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

//repos
  Get.lazyPut(() => UserRepo(apiClient: Get.find()));
  Get.lazyPut(() => ProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(apiClient: Get.find()));
  Get.lazyPut(() => WishlistRepo(apiClient: Get.find()));
  Get.lazyPut(() => CategoryRepo(apiClient: Get.find()));

//controllers
  Get.lazyPut(() => UserController(userRepo: Get.find()));
  Get.lazyPut(() => ProductController(productRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
  Get.lazyPut(() => WishlistController(wishlistRepo: Get.find()));
  Get.lazyPut(() => CategoryController(categoryRepo: Get.find()));
}
