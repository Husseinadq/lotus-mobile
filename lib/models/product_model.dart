import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Products {
  int? _totalSize;
  int? _typeId;
  int? _offset;

  List<ProductModel> get products => _products;
  late List<ProductModel> _products;
  Products({
    required totalSize,
    required typeId,
    required offset,
    required products,
  }) {
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offset = offset;
    this._products = products;
  }

//

  Products.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  double? price;
  int? stars;

  String? img;
  String? location;
  // String? createdAt;
  // String? updatedAt;
  int? brand;
  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.img,
    this.location,
    // this.createdAt,
    // this.updatedAt,
    this.brand,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      price: double.parse( json["price"].toString()),
      stars: json["stars"],
      img: json["img"],
      location: json["location"],
      // createdAt: json["createdAt"],
      // updatedAt: json["updatedAt"],
      // brand: json["typeId"],
      brand: json["brand"],
    );
  }
//

}
