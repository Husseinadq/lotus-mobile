// import 'package:flutter/cupertino.dart';
//
// class ApiRespons<E> {
//   bool? _status;
//   String? _statusNumber;
//   String? _message;
//   List<E> ?_items;
//   List<E> get items => _items!;
//
//   ApiRespons(status, statusNumber, message, items) {
//     this._status = status;
//     this._statusNumber = statusNumber;
//     this._message = message;
//     this._items = items;
//   }
//
//    ApiRespons.fromJson(Map<String, dynamic> json) {
//
//       _status= json["_status"].toLowerCase() == 'true';
//       _statusNumber= json["_statusNumber"];
//       _message= json["_message"];
//       if (json['items'] != null) {
//         _items = <E>[];
//         json['items'].forEach((v) {
//           _items?.add(E.fromJson(v));
//         });
//       }
//   }
// //
//
// }
