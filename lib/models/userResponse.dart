import 'dart:convert';

class UserResponse {
    int? id;
    String? firstname;
    String? lastname;
    DateTime? birthday;
    String? username;

    UserResponse({
        this.id,
        this.firstname,
        this.lastname,
        this.birthday,
        this.username,
    });

    factory UserResponse.fromRawJson(String str) => UserResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        birthday: json["birthday"] == null ? null : DateTime.parse(json["birthday"]),
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "birthday": birthday?.toIso8601String(),
        "username": username,
    };
}
