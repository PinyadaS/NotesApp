import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:notes_app/assets/constant.dart';
import 'package:notes_app/models/registerRequestModel.dart';
import 'package:notes_app/models/userResponse.dart';

class UserService {
  Future<Map<String, dynamic>> authenticate(
      String username, String password) async {
    final response = await http.post(
      Uri.parse(endpoint + loginPath),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        {"username": username, "password": password},
      ),
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to log in.");
    }
  }

  Future<Map<String, dynamic>> register(RegisterRequestModel data) async {
    print(data.birthday);
    final response = await http.post(
      Uri.parse(endpoint + registerPath),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: registerRequestModelToJson(data),
    );
    if (response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to sign up.");
    }
  }
}
