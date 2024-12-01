import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  // variable for store value
  String userName;

  // this is call constructor
  UserProvider({
    this.userName = "Map",
  });

  // This is call Method
  void changeUserName({required String newUserName}) async {
    userName = newUserName;
    // use it for sure application know data has been change entire application
    notifyListeners();
  }
}
