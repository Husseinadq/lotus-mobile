import 'package:flutter/material.dart';
import 'package:lotus/pages/wishlist/wishlist_screen.dart';

import '../pages/cart/cart_screen.dart';
import '../pages/category/categories_screen.dart';
import '../pages/home/home_screen.dart';
import '../pages/profile/profile_screan.dart';

class AppConstants {
  //  Start  API config
  static const String LANG = "&lang=en";
  static const String BASE_URL = "http://127.0.0.1:8000";
  static const String KEY = "?api_password=rpjiku3pYI01usjbvWqEa92Pfk6Nq";
  static const String API_V = "/api/v1";
  static const String TOKEN = "DBToken";
  //  End  API config

  static const String POPULAR_PRODUCT_URL =
      "/api/v1/get-products?api_password=rpjiku3pYI01usjbvWqEa92Pfk6Nq";

  //#### start user url route
  static const String USER_LOG_IN = "/user/login";
  static const String USER_SIGN_UP = "/user/sign-up";
  static const String USER_LOG_OUT = "/user/logout";
  static const String USER_PROFILE = "/user/profile";

  //#### end user url route

  //#### start category url route
  static const String SINGLE_CATEGORY_URL = "/get-single-category/";
  static const String ALL_CATEGORY_URL = "/get-category";
  //#### end category url route

  //#### start cart url route
  static const String ALL_CART_ITEMS = "/post-cart-items";
  static const String ADD_TO_CART = "/post-add-to-cart";
  static const String UPDATE_CART = "/post-update-cart-item";
  static const String REMOVE_ITEM = "/post-delete-cart-item";
  //#### end cart url route

  /// start google slidable bottum nav
  static int PAGENUMBER = 0;
  static List<Widget> NAV_BAR_SCREEN = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  /// end  google slidable bottum nav

}
