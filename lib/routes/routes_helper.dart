import 'package:get/get.dart';
import 'package:lotus/pages/cart_screen.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:lotus/pages/home/home_screen.dart';

import '../pages/product/product_detail.dart';

class RouteHelper {
  static const String initial = "/";
  static const String product_detail = "/product-detail";
  static const String cart = "/cart";

  static String getInitial() => '$initial';
  static String getProductDetail(int productId) =>
      '$product_detail?productId=$productId';
  static String getCart() => '$cart';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomeScreen()),
    GetPage(
        name: product_detail,
        page: () {
          var productId = Get.parameters['productId'];
          return ProductDetail();
        }),
    GetPage(name: cart, page: () => CartScreen())
  ];
}
