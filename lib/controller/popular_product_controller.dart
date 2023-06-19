// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:lotus/data/repository/popular_product_repo.dart';
import 'package:lotus/models/product_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({
    required this.popularProductRepo,
  });

  List<ProductModel> _popularProductList = [];

  List<ProductModel> get popularProductList =>
      _popularProductList; //return the list of product to the UI

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductRepoList();
         print("get data 111 "+response.statusCode.toString());
    if (response.statusCode == 200) {
      
      _popularProductList = [];
      _popularProductList.addAll(Products.fromJson(response.body)
          .products); //we bass the data after we format it and call get products method
      
      print(_popularProductList);
      update();

      ///like setStait
    }
  }
}
