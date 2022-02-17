import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final CounterProvider = ChangeNotifierProvider((ref) => Counter());

class Counter extends ChangeNotifier {
  var _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
