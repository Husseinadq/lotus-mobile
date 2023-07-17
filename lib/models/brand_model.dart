import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Brands{
  bool? _status;
  String? _statusNumber;
  String? _message;
  List<Brand> ?_items;
  List<Brand> get items => _items!;

  Brands(status, statusNumber, message, items) {
    _status = status;
    _statusNumber = statusNumber;
    _message = message;
    _items = items;
  }

   Brands.fromJson(Map<String, dynamic> json) {

      _status= json["_status"];
      _statusNumber= json["_statusNumber"];
      _message= json["_message"];
      if (json['items'] != null) {
        _items = [];
        json['items'].forEach((v) {
          _items?.add(Brand.fromJson(v));
        });
      }
  }
//

}

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Brand {
  int id;
  String name;
  String imageUrl;
  Brand({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
  

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'name': name,
  //     'imageUrl': imageUrl,
  //   };
  // }

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Brand.fromJson(String source) => Brand.fromMap(json.decode(source) as Map<String, dynamic>);
}
