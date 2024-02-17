import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:notes_app/assets/constant.dart';

class UserService {
    Future<Map<String,dynamic>> authenticate(String username, String password) async {
      final response = await http.post(Uri.parse(endpoint + loginPath),
        headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',},
        body: jsonEncode({"username": username, "password": password},),);
        if (response.statusCode == 200) {
          return json.decode(response.body);
        }
        else {
          throw Exception("Failed to log in.");
        }
  }
}
