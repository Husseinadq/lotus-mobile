import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartModel {
  bool? _status;
  String? _errorNumber;
  String? _message;
  List<CartItem> get cartItems => _cardItems;
  late List<CartItem> _cardItems;
  CartModel({
    required status,
    required errorNumber,
    required message,
    required cardItems,
  }) {
    _status = status;
   _errorNumber = errorNumber;
   _message = message;
    _cardItems = cardItems;
  }
  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': _id,
  //     'pruductId': _pruductId,
  //     'cartId': _cartId,
  //     'price': _price,
  //     'quantity': _quantity,
  //   };
  // }

  CartModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _errorNumber = json['errorNumber'];
    _message = json['message'];
    if (json['card_items'] != null) {
      _cardItems = <CartItem>[];
      json['card_items'].forEach((v) {
        _cardItems.add(CartItem.fromJson(v));
      });
    }
  }

  // String toJson() => json.encode(toMap());

  // factory CartModel.fromJson(String source) => CartModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class CartItem {
  int? id;
  int? productId;
  int? cartId;
  double? price;
  int? quantity;
  String? productName;
  String? imageUrl;
  CartItem({
    this.id,
    this.productId,
    this.cartId,
    this.price,
    this.quantity,
    this.imageUrl,
    this.productName
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      productId: json['product_id'],
      cartId: json['cart_id'],
      price:double.parse( json['price'].toString()),
      quantity: json['quantity'],imageUrl: json['imageUrl'],productName: json['productName'],
    );
  }
}
