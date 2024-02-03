class LoginController {
  String? username;
  String? password;
  void updateUsername(newValue) {
    username = newValue;
  }
  void updatePassword(newValue) {
    password = newValue;
  }
  String? validateUsername(String? value) {
    if (value==null || value.isEmpty) {
      return "You have not entered a username.";
    }
    return null;
  }
  String? validatePassword(String? value) {
    if (value==null || value.isEmpty) {
      return "You have not entered a username.";
    }
    return null;
  }
  void login() {
    print('username: $username password: $password');
  }
}