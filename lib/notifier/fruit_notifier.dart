import 'package:flutter/cupertino.dart';

class FruitNotifier extends ChangeNotifier {
  String fruit = "unknown";
  void changeFruit(String fruit) {
    this.fruit = fruit;
    notifyListeners();
  }
}
