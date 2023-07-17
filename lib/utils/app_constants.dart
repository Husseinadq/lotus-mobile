import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lotus/pages/home/sub_home_screen.dart';
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

  static const String GET_STATES = "/user/get-states";
  static const String SET_USER_STATE = "/user/set-state";

  //#### end user url route

  //#### start product url route
  // static const String SINGLE_CATEGORY_URL = "/get-single-category/";
  static const String ALL_PRODUCT = "/get-products";
  //#### end product url route

  // #### start category url route
  static const String SINGLE_CATEGORY_URL = "/get-single-category/";
  static const String ALL_CATEGORY_URL = "/get-main-category";
  static const String ALL_SUB_CATEGORIES_URL = "/get-sub-categories";
  //#### end category url route

  //#### start cart url route
  static const String ALL_CART_ITEMS = "/post-cart-items";
  static const String ADD_TO_CART = "/post-add-to-cart";
  static const String UPDATE_CART = "/post-update-cart-item";
  static const String REMOVE_CART_ITEM = "/post-delete-cart-item";
  //#### end cart url route

  //#### start wishlist url route
  static const String ALL_WISHLIST_ITEMS = "/post-wishlist-items";
  static const String ADD_TO_WISHLIST = "/post-add-to-wishlist";
  static const String REMOVE_WISHLIST_ITEM = "/post-delete-wihslist-item";
  //#### end wishlist url route

  /// start google slidable bottum nav
  static int PAGENUMBER = 0;
  static bool IS_FROM_OUT_ROUT = false;
  static List<Widget> NAV_BAR_SCREEN = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    WishlistScreen(),
    ProfileScreen(),
    SubHomeScreen()
  ];

  /// end  google slidable bottum nav
  static final navigationKey = GlobalKey<CurvedNavigationBarState>();
}
