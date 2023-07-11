// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get_connect/http/src/response/response.dart';

import '../../utils/app_constants.dart';
import '../api/api_clint.dart';

class ProductRepo {
  final ApiClient apiClient;
  ProductRepo({
    required this.apiClient,
  });
  Future<Response> getAllProducts() async {
    return await apiClient.getData(
        AppConstants.API_V +
            AppConstants.ALL_PRODUCT+
            AppConstants.KEY +
            AppConstants.LANG); //we bass as url the end point
  }


}
