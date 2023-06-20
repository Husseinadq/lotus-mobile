// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:lotus/data/api/api_clint.dart';
import 'package:lotus/utils/app_constants.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({
    required this.apiClient,
  });

  Future<Response> getRecommendedProductRepoList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URL);//we bass as url the end point
  }
}
