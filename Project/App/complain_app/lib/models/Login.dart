// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.id,
    required this.fullName,
    required this.userEmail,
    required this.password,
    required this.contactNo,
    this.address,
    this.state,
    this.country,
    this.pincode,
    this.userImage,
    required this.regDate,
    required this.updationDate,
    required this.status,
  });

  String id;
  String fullName;
  String userEmail;
  String password;
  String contactNo;
  dynamic address;
  dynamic state;
  dynamic country;
  dynamic pincode;
  dynamic userImage;
  DateTime regDate;
  String updationDate;
  String status;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        id: json["id"],
        fullName: json["fullName"],
        userEmail: json["userEmail"],
        password: json["password"],
        contactNo: json["contactNo"],
        address: json["address"],
        state: json["State"],
        country: json["country"],
        pincode: json["pincode"],
        userImage: json["userImage"],
        regDate: DateTime.parse(json["regDate"]),
        updationDate: json["updationDate"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "userEmail": userEmail,
        "password": password,
        "contactNo": contactNo,
        "address": address,
        "State": state,
        "country": country,
        "pincode": pincode,
        "userImage": userImage,
        "regDate": regDate.toIso8601String(),
        "updationDate": updationDate,
        "status": status,
      };
}
