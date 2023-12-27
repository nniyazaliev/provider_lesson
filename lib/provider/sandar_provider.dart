import 'package:flutter/material.dart';

class SandarProvider extends ChangeNotifier {
  List<int> listSandar = [0, 2, 93];

  void add() {
    final akyrkySan = listSandar.last;
    listSandar.add(akyrkySan + 1);
  }
}
