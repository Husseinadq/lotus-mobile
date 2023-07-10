
class WishlistModel{
  bool? _status;
  String? _statusNumber;
  String? _message;
   List<WishlistItem> ?_items;
  List<WishlistItem> get items => _items!;

  WishlistModel(status, statusNumber, message, items) {
    this._status = status;
    this._statusNumber = statusNumber;
    this._message = message;
    this._items = items;
  }

  WishlistModel.fromJson(Map<String, dynamic> json) {

      _status= json["_status"];
      _statusNumber= json["_statusNumber"];
      _message= json["_message"];
      if (json['items'] != null) {
        _items = <WishlistItem>[];
        json['items'].forEach((json) {
          _items?.add(WishlistItem.fromJson(json));
        });
      }
  }

}
class WishlistItem {
  int? id;
  int? productId;
  String? productName;
  String? productImage;
  double? price;

  WishlistItem(
      {required this.id,
        required this.productId,
      required this.productName,
      required this.productImage,
      required this.price});

  factory WishlistItem.fromJson(Map<String, dynamic> json) {
    return WishlistItem(
      id: json["id"],  productId: json["productId"],
      productName: json["productName"],
      productImage: json["productImage"],
      price: double.parse(json["price"].toString()),
    );
  }
//
}
