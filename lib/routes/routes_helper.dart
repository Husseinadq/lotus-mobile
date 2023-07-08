import 'package:get/get.dart';
import 'package:lotus/pages/cart/cart_screen.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:lotus/pages/home/home_screen.dart';
import 'package:lotus/pages/splash/login/login_screen.dart';
import 'package:lotus/pages/profile/profile_screan.dart';
import 'package:lotus/pages/splash/splash_screen.dart';

import '../pages/product/product_detail.dart';
import '../pages/splash/In_board_screen.dart';
import '../pages/splash/signup/signup_screen.dart';

class RouteHelper {
  static const String onBoard = "/board";
  static const String login = "/login";
  static const String signup = "/signup";

  static const String initial = "/";
  static const String categories = "/categories";
  static const String offers = "/offers";
  static const String profile = "/profile";
  static const String cart = "/cart";

  static const String productDetail = "/product-detail";
  static String getInBoard() => '$onBoard';
  static String getLogin() => '$login';
  static String getSignUp() => '$signup';

  static String getInitial() => '$initial';
  static String getCategories() => '$categories';
  static String getOffers() => '$offers';
  static String getProfile(int index) => '$profile?index=$index';
  static String getCart() => '$cart';

  static String getProductDetail(int productId) =>
      '$productDetail?productId=$productId&pageNumber=2';

  static List<GetPage> routes = [
    GetPage(
        name: getInBoard(),
        page: () {
          return InBoardScreen();
        }),
    GetPage(
        name: getLogin(),
        page: () {
          return LoginScreen();
        }),
    GetPage(
        name: getSignUp(),
        page: () {
          return SingUpScreen();
        }),
    GetPage(
        name: initial,
        page: () {
          return SplashScreen();
        }),
    GetPage(
        name: getCategories(),
        page: () {
          return MainShopPage();
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

  static getSplash() {}
}
