// ignore_for_file: public_member_api_docs, sort_constructors_first

class Categories {
  bool? _status;
  String? _errorNumber;
  String? _message;
  List<Category> get categories => _categories;
  late List<Category> _categories;
  Categories({  
   required status,
   required errorNumber,
   required message,
   required categories,
  }) {
    this._status = status;
    this._errorNumber = errorNumber;
    this._message = message;
    this._categories = categories;
  }
   

  Categories.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _errorNumber = json['errorNumber'];
    _message = json['message'];
    if (json['category'] != null) {
      _categories = <Category>[];
      json['category'].forEach((v) {
        _categories.add(Category.fromJson(v));
      });
    }
  }
}

class Category {
  int? id;
  String? name;
  Category({
    this.id,
    this.name,
  });
  

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}
