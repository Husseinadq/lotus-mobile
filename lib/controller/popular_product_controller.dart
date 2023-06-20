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
  bool _isLoaded = false;

// ##### start get ####
  bool get isLoaded => _isLoaded;
  List<ProductModel> get popularProductList =>
      _popularProductList; //return the list of product to the UI
  ProductModel findById(int id) {
   late ProductModel product ;
    popularProductList.forEach(
      (element) {
        if(element.id == id) {
          product=element ;
          
        }
      },
    );
   
    return product;
  }

// ##### end get ####

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductRepoList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Products.fromJson(response.body)
          .products); //we bass the data after we format it and call get products method
      _isLoaded = true;
      update();

      ///like setStait
    }
  }
}
