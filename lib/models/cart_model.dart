import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartModel {
  int? id;
  String? name;
  double? price;
  String? img;
  int? quantity;
  bool ?isExit;
  String? time;
  CartModel({
    this.id,
    this.name,
    this.price,
    this.img,
    this.quantity,
     this.isExit,
    this.time,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'img': img,
      'quantity': quantity,
      'isExit': isExit,
      'time': time,
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'],
      name: json['name'] ,
      price: json['price'],
      img: json['img'] ,
      quantity: json['quantity'],
      isExit: json['isExit'] as bool,
      time: json['time'] ,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) => CartModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
