import 'package:flutter/cupertino.dart';

class SimpleModelRespons {
  bool? _status;
  String? _statusNumber;
  String? _message;
  List<SimpleModel>? _items;
  List<SimpleModel> get items => _items!;

  SimpleModelRespons(status, statusNumber, message, items) {
    this._status = status;
    this._statusNumber = statusNumber;
    this._message = message;
    this._items = items;
  }

  SimpleModelRespons.fromJson(Map<String, dynamic> json) {
    _status = json["_status"];
    _statusNumber = json["_statusNumber"];
    _message = json["_message"];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(SimpleModel.fromJson(v));
      });
    }
  }
//

}

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SimpleModel {
  int? id;
  String? name;
  SimpleModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '?id': id,
      '?name': name,
    };
  }

  factory SimpleModel.fromJson(Map<String, dynamic> json) {
    return SimpleModel(
      id: json['id'],
      name: json['name'],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory SimpleModel.fromJson(String source) => SimpleModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
