import 'package:flutter/material.dart';

import '../pages/cart/cart_screen.dart';
import '../pages/category/categories_screen.dart';
import '../pages/home/home_screen.dart';
import '../pages/profile/profile_screan.dart';

class AppConstants {
  static const String LANG = "&lang=en";

  // static const String BASE_URL = "http://mvs.bslmeiyu.com";
  // static const String POPULAR_PRODUCT_URL = "/api/v1/products/popular";
  static const String BASE_URL = "http://127.0.0.1:8000";
  static const String KEY = "?api_password=rpjiku3pYI01usjbvWqEa92Pfk6Nq";
  static const String API_V = "/api/v1";

  static const String POPULAR_PRODUCT_URL =
      "/api/v1/get-products?api_password=rpjiku3pYI01usjbvWqEa92Pfk6Nq";

  static const String TOKEN = "DBToken";

  //#### start category url route
  static const String SINGLE_CATEGORY_URL = "/get-single-category/";
  static const String ALL_CATEGORY_URL = "/get-category";
  //#### end category url route

  //#### start cart url route
  static const String ALL_CART_ITEMS = "/post-cart-items";
  static const String UPDATE_CART = "/post-update-cart-item";
  static const String REMOVE_ITEM = "/post-delete-cart-item";
  //#### end cart url route

  static int PAGENUMBER = 0;
  static const List<Widget> NAV_BAR_SCREEN = [
    HomeScreen(),
    CategoriesScreen(),
    HomeScreen(),
    ProfileScreen(),
    CartScreen()
  ];
}
