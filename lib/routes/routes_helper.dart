import 'package:get/get.dart';
import 'package:lotus/pages/cart/cart_screen.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:lotus/pages/home/home_screen.dart';
import 'package:lotus/pages/profile/profile_screan.dart';

import '../pages/product/product_detail.dart';

class RouteHelper {
  static const String initial = "/";
  static const String categories = "/categories";
  static const String offers = "/offers";
  static const String profile = "/profile";
  static const String cart = "/cart";

  static const String productDetail = "/product-detail";

  static String getInitial() => '$initial';
  static String getCategories() => '$categories';
  static String getOffers() => '$offers';
  static String getProfile(int index) => '$profile?index=$index';
  static String getCart() => '$cart';

  static String getProductDetail(int productId) =>
      '$productDetail?productId=$productId&pageNumber=2';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return MainShopPage(
          );
        }),
    GetPage(
        name: getCategories(),
        page: () {
          return MainShopPage(
          );
        }),
    GetPage(
        name: getOffers(),
        page: () {
          return MainShopPage();
        }),
    GetPage(
        name: profile,
        page: () {
          var index = Get.parameters['index'];
          return ProfileScreen();
        }),
    GetPage(name: cart, page: () => CartScreen()),
    GetPage(
        name: productDetail,
        page: () {
          var productId = Get.parameters['productId'];
          var pageNumber = Get.parameters['pageNumber'];

          return ProductDetail(
            productId: int.parse(productId.toString()),
          );
        }),
  ];
}
