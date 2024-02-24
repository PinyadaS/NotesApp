// To parse this JSON data, do
//
//     final registerRequestModel = registerRequestModelFromJson(jsonString);

import 'dart:convert';

RegisterRequestModel registerRequestModelFromJson(String str) => RegisterRequestModel.fromJson(json.decode(str));

String registerRequestModelToJson(RegisterRequestModel data) => json.encode(data.toJson());

class RegisterRequestModel {
    String? firstname;
    String? lastname;
    String? birthday;
    String? username;
    String? password;

    RegisterRequestModel({
        this.firstname,
        this.lastname,
        this.birthday,
        this.username,
        this.password,
    });

    factory RegisterRequestModel.fromJson(Map<String, dynamic> json) => RegisterRequestModel(
        firstname: json["firstname"],
        lastname: json["lastname"],
        birthday: json["birthday"],
        username: json["username"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "birthday": birthday,
        "username": username,
        "password": password,
    };
}
