import 'package:http/http.dart' as http;

class UserService {
  Future<bool> authenticate(String username, String password) async {
    final response = await http.post();
    return true;
  }
}