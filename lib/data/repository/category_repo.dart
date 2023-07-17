import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_clint.dart';

class CategoryRepo extends GetxService {
  final ApiClient apiClient;
  CategoryRepo({
    required this.apiClient,
  });

  Future<Response> getSingleCategory(int id) async {
    return await apiClient.getData(AppConstants.API_V +
        AppConstants.SINGLE_CATEGORY_URL +
        id.toString() +
        AppConstants.KEY +
        AppConstants.LANG); //we bass as url the end point
  }

  Future<Response> getAllCategories() async {
    return await apiClient.getData(AppConstants.API_V +
        AppConstants.ALL_CATEGORY_URL +
        AppConstants.KEY +
        AppConstants.LANG); //we bass as url the end point
  }

  Future<Response> getSubCategories(Map<String, dynamic> data) async {
    return await apiClient.postData(AppConstants.API_V +
        AppConstants.ALL_SUB_CATEGORIES_URL +
        AppConstants.KEY +
        AppConstants.LANG,data); //we bass as url the end point
  }
}
