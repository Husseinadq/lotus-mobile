// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:lotus/models/product_model.dart';

import '../data/repository/recommended_product_repo.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({
    required this.recommendedProductRepo,
  });

  List<Product> _recommendedProductList = [];
  bool _isLoaded = false;

// ##### start get ####
  bool get isLoaded => _isLoaded;
  List<Product> get recommendedProductList =>
      _recommendedProductList; //return the list of product to the UI

// ##### end get ####

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductRepoList();
    if (response.statusCode == 200) {
      print("object 200");
      _recommendedProductList = [];
      _recommendedProductList.addAll(ProductsModel.fromJson(response.body)
          .items); //we bass the data after we format it and call get products method
      _isLoaded = true;
      update();

      ///like setStait
    }
  }
}
