import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:notes_app/assets/constant.dart';
import 'package:notes_app/models/noteResponse.dart';


class NoteService {
  Future <List<NoteResponse>> getNotes(userID) async {
    final response = await http.get(
      Uri.parse(endpoint + getNotePath + "?userID=" + userID),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> results = data["data"];
      return results.map((e) => NoteResponse.fromJson(e)).toList();
    } else {
      throw Exception("No notes created by this user.");
    }
  }
}
