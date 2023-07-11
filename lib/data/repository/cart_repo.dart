// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get_connect/http/src/response/response.dart';

import '../../utils/app_constants.dart';
import '../api/api_clint.dart';

class CartRepo {
  final ApiClient apiClient;
  CartRepo({
    required this.apiClient,
  });
  Future<Response> getAllCartItems(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.ALL_CART_ITEMS +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }
  Future<Response> addToCart(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.ADD_TO_CART +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }
  Future<Response> updateCartQuantity(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.UPDATE_CART +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point removFromCart
  }

  Future<Response> removFromCart(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.REMOVE_CART_ITEM +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }
}
