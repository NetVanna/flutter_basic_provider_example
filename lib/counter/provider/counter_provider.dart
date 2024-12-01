import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int value;

  CounterProvider({this.value = 0});

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    if (value <= 0) return;
    value--;
    notifyListeners();
  }
}
