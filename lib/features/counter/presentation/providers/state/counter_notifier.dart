




import 'package:flutter/material.dart';

class CounterNotifier with ChangeNotifier {


  int _value = 0;
  int get value => _value;
  void incrementValue() {
    _value++;
    notifyListeners();
  }


// final counterProvider = ChangeNotifierProvider((ref) => CounterNotifier());



}