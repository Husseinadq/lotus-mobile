import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductsModel {
  bool? _status;
  String? _statusNumber;
  String? _message;
  List<Product> ?_items;
  List<Product> get items => _items!;
  ProductsModel({
    required status,
    required statusNumber,
    required message,
    required items,
  }) {
    this._status = status;
    this._statusNumber = statusNumber;
    this._message = message;
    this._items = items;
  }

//

  ProductsModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _statusNumber = json['statusNumber'];
    _message = json['message'];
    if (json['items'] != null) {
      _items = <Product>[];
      json['items'].forEach((v) {
        _items?.add(Product.fromJson(v));
      });
    }
  }
}

class Product{
  int? id;
  String? name;
  double? price;

  String? productImage;

  Product({
    this.id,
    this.name,
    this.price,
    this.productImage,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      price: double.parse(json["price"].toString()),
      productImage: json["productImage"],
    );
  }
//

}
