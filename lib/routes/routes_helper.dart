import 'package:get/get.dart';
import 'package:lotus/pages/cart/cart_screen.dart';
import 'package:lotus/pages/home/Main_shop_page.dart';
import 'package:lotus/pages/home/home_screen.dart';
import 'package:lotus/pages/home/sub_home_screen.dart';
import 'package:lotus/pages/profile/personal_details_screen.dart';
import 'package:lotus/pages/splash/login/login_screen.dart';
import 'package:lotus/pages/profile/profile_screan.dart';
import 'package:lotus/pages/splash/splash_screen.dart';
import 'package:lotus/pages/wishlist/wishlist_screen.dart';

import '../pages/product/product_detail.dart';
import '../pages/splash/In_board_screen.dart';
import '../pages/splash/signup/signup_screen.dart';

class RouteHelper {
  static const String onBoard = "/on-board";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String mainpage = "/main-page";

  static const String initial = "/";
  static const String categories = "/categories";
  static const String cart = "/cart";
  static const String wishlist = "/wishlist";
  static const String profile = "/profile";

  static const String subHome = "/sub-home";
  static const String personalDetail = "/personal-Detail";
  static const String offers = "/offers";

  static const String productDetail = "/product-detail";
  static String getInBoard() => '$onBoard';
  static String getLogin() => '$login';
  static String getSignUp() => '$signup';
  static String getInitial() => '$initial';

  static String getMainPage() => '$mainpage';
  static String getCategories() => '$categories';
  static String getCart() => '$cart';
  // static String getProfile(int index) => '$profile?index=$index';
  static String getProfile() => '$profile';
  static String getWishlist() => '$wishlist';

  static String getSubHome() => '$subHome';
  static String getPersonalDetail() => '$personalDetail';
  static String getOffers() => '$offers';

  static String getProductDetail(int productId) =>
      '$productDetail?productId=$productId&pageNumber=2';

  static List<GetPage> routes = [
    GetPage(
        name: getInitial(),
        page: () {
          return SplashScreen();
        }),
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
        name: getMainPage(),
        page: () {
          return MainShopPage();
        }),
    GetPage(
        name: getCategories(),
        page: () {
          return MainShopPage();
        }),
    GetPage(
        name: getWishlist(),
        page: () {
          return WishlistScreen();
        }),
    GetPage(name: getCart(), page: () => CartScreen()),
    GetPage(
        name: getProfile(),
        page: () {
          var index = Get.parameters['index'];
          return ProfileScreen();
        }),
    GetPage(name: getSubHome(), page: () => SubHomeScreen()),
    GetPage(name: getPersonalDetail(), page: () => PersonalDetailsScreen()),
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

  // static getSplash() {}
}
