// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get_connect/http/src/response/response.dart';

import '../../utils/app_constants.dart';
import '../api/api_clint.dart';

class WishlistRepo {
  final ApiClient apiClient;
  WishlistRepo({
    required this.apiClient,
  });
  Future<Response> getAllWishlistItems(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.ALL_WISHLIST_ITEMS +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }



  Future<Response> addToWishlist(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.ADD_TO_WISHLIST +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }
  Future<Response> removFromWishlist(Map<String, dynamic> data) async {
    return await apiClient.postData(
        AppConstants.API_V +
            AppConstants.REMOVE_WISHLIST_ITEM +
            AppConstants.KEY +
            AppConstants.LANG,
        data); //we bass as url the end point
  }
}
