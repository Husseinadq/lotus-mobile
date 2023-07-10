// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:lotus/data/repository/cart_repo.dart';
import 'package:lotus/models/product_model.dart';

import '../models/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({
    required this.cartRepo,
  });

  List<CartItem> _cartItems = [];
  List<CartItem> get cartItems => _cartItems;
  final Map<String, dynamic> _allCartItemsPost = {'user': 1};
  Map<String, dynamic> _body = {};
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  bool isUpdateQuantity = false;
  int totalItem = 0;

  Future<void> getAllCartItems() async {
    Response response = await cartRepo.getAllCartItems(_allCartItemsPost);
    if (response.statusCode == 200) {
      _cartItems = [];
      _cartItems.addAll(CartModel.fromJson(response.body)
          .cartItems); //we bass the data after we format it and call get products method

      _isLoaded = true;
      totalItems();

      update();

      ///like setStait
    }
  }


  Future<void> addToCart(userId,productId,quantity) async {
    Response response = await cartRepo.addToCart({
      "user":userId,
      "product_id":productId,
      "quantity": quantity
    });
    if (response.statusCode == 200) {
      print(response.body);
      if(response.body['status']==true){
        _cartItems.add(CartModel.fromJson(response.body).cartItems[0]);
        _isLoaded = true;
        update();
      }
      // TODO: error handel if it dose not added
    }
    /// TODO error handel if it dose not go will

  }

  Future<void> updateItemQuantity(int id, bool mode) async {
    // _isLoaded = false;
    isUpdateQuantity = false;
    _body = {"id": id, "quantity": mode == true ? 1 : -1};
    Response response = await cartRepo.updateCartQuantity(_body);
    if (response.body['status'] != false) {
      // if(_cartItems.contains(id))
      // print("secccccc");
      // _cartItems.update(id, (value) {
      //  containsKey

      // });
      getAllCartItems();
      // _isLoaded = true;
    }
  }

  Future<void> removeFromCart(int id) async {
    _isLoaded = false;
    isUpdateQuantity = false;

    _body = {'id': id};
    Response response = await cartRepo.removFromCart(_body);
    if (response.statusCode == 200) {
      getAllCartItems();
      // totalI = totalItems;
    }
  }

  // void addItem(ProductModel product, int quantity) {
  //   var totalQuantity = 0;
  //   if (_items.containsKey(product.id)) {
  //     _items.update(product.id!, (value) {
  //       totalQuantity = value.quantity! + quantity;
  //       return CartModel(
  //           id: value.id,
  //           img: value.img,
  //           name: value.name,
  //           price: value.price,
  //           isExit: true,
  //           quantity: value.quantity! + quantity,
  //           time: DateTime.now().toString());
  //     });
  //     if (totalQuantity <= 0) {}
  //     _items.remove(product.id);
  //   } else {
  //     if (quantity > 0) {
  //       _items.putIfAbsent(
  //           product.id!,
  //           () => CartModel(
  //               id: product.id,
  //               img: product.img,
  //               name: product.name,
  //               price: product.price,
  //               isExit: true,
  //               quantity: quantity,
  //               time: DateTime.now().toString()));
  //     } else {
  //       Get.snackbar(
  //           "Item Count", "You shold at least add an item in the cart !!");
  //     }
  //   }
  // }

  // bool existInCart(ProductModel productModel) {
  //   if (_items.containsKey(productModel.id)) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // int getQuantity(ProductModel product) {
  //   var quantity = 0;
  //   if (_items.containsKey(product.id)) {
  //     _items.forEach((key, value) {
  //       if (key == product.id) {
  //         quantity = value.quantity!;
  //       }
  //     });
  //   }

  //   return quantity;
  // }

  void totalItems() {
    int totalQuantity = 0;
    if (cartItems.isNotEmpty) {
      cartItems.forEach((element) {
        totalQuantity += element.quantity!;
      });
    }

    totalItem = totalQuantity;
    update();
  }

  double get totalPrice {
    double totalPrice = 0;
    _cartItems.forEach((element) {
      totalPrice += ((element.price!) * (element.quantity!));
    });
    update();

    return totalPrice;
  }
}
