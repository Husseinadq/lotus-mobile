// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';

import 'package:lotus/data/repository/popular_product_repo.dart';
import 'package:lotus/models/product_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({
    required this.popularProductRepo,
  });
  late CartController _cart;

  List<ProductModel> _popularProductList = [];
  bool _isLoaded = false;
  int _quantity = 0;
  int _inCartItems = 0;

// ##### start get ####

  int get quantity => _quantity;
  bool get isLoaded => _isLoaded;
  List<ProductModel> get popularProductList =>
      _popularProductList; //return the list of product to the UI

  int get inCardItems => _inCartItems + _quantity;

  ProductModel findById(int id) {
    late ProductModel product;
    popularProductList.forEach(
      (element) {
        if (element.id == id) {
          product = element;
        }
      },
    );

    return product;
  }

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

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((quantity + _inCartItems) < 0) {
      Get.snackbar("Quantity", "You can't reduce more !");
      if (_inCartItems > 0) {
        _quantity = -_inCartItems;
        return 0;
      }
      return 0;
    } else if ((quantity + _inCartItems) > 20) {
      Get.snackbar("Quantity", "You can't add more !");
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(CartController cart, ProductModel product) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    // exist = cart.existInCart(product);
    if (exist) {
      // _inCartItems = _cart.getQuantity(product);
    }
  }

  void addItem(ProductModel product) {
    // if (quantity > 0) {

    // _cart.addItem(product, _quantity);
    // print("cart total items = " + totalItems.toString());
    print("_quantity = " + _quantity.toString());
    _quantity = 0;
    // _inCartItems = _cart.getQuantity(product);
    update();
    // } else {
    //   Get.snackbar(
    //       "Item Count", "You shold at least add an item in the cart !!");
    // }
  }

  // int get totalItems {
  //   // return _cart.totalItems;
  // }
}
