import 'package:flutter/foundation.dart';

class Auth with ChangeNotifier {
  var _loggedIn = false;

  bool get loggedIn => _loggedIn;

  void loginUser() {
    _loggedIn = true;
    print('Logged in');
    notifyListeners();
  }

  void logout() {
    _loggedIn = false;
    print('Logged out');
    notifyListeners();
  }
}