// import 'package:flutter/cupertino.dart';

// class ApiRespons{
//   bool? _status;
//   String? _statusNumber;
//   String? _message;
//   List ?_items;
//   List get items => _items!;

//   ApiRespons(status, statusNumber, message, items) {
//     this._status = status;
//     this._statusNumber = statusNumber;
//     this._message = message;
//     this._items = items;
//   }

//    ApiRespons.fromJson(Map<String, dynamic> json) {

//       _status= json["_status"];
//       _statusNumber= json["_statusNumber"];
//       _message= json["_message"];
//       if (json['items'] != null) {
//         _items = [];
//         json['items'].forEach((v) {
//           _items?.add(E.fromJson(v));
//         });
//       }
//   }
// //

// }
