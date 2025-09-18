import 'package:flutter/cupertino.dart';

class LoginProvider with ChangeNotifier {
  bool rememberMe = false;

  void toggleRememberMe(bool? value) {
    rememberMe = value ?? false;
    notifyListeners();
  }
}
