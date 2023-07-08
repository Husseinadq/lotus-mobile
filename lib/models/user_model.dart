import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  bool? _status;
  String? _statusNumber;
  String? _message;
  User? _user;
  User get cartItems => _user!;

  UserModel(
      {required status,
      required errorNumber,
      required message,
      required cardItems,
      required user}) {
    this._status = status;
    this._statusNumber = errorNumber;
    this._message = message;
    this._user = user;
  }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     '_status': _status,
  //     '_errorNumber': _errorNumber,
  //     '_message': _message,
  //     '?_user': ?_user.toMap(),
  //   };
  // }

  UserModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _statusNumber = json['statusNumber'];
    _message = json['message'];

    if (json['usre'] != null) {
      _user = User.fromJson(json['_user']);
    }
  }

  // String toJson() => json.encode(toMap());

  // factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class User {
  int id;
  String firstName;
  String middleName;
  String lastName;
  String mobile;
  String email;
  String token;
  User({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.mobile,
    required this.email,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'mobile': mobile,
      'email': email,
      'token': token,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      middleName: json['middleName'] as String,
      lastName: json['lastName'] as String,
      mobile: json['mobile'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
