library my_project.global;

import 'package:flutter/material.dart';
import 'transferVariables.dart' as global;

// set default values for the initial run
class Database with ChangeNotifier {
  List<String> listItem = [
    "Logitech G502",
    "Logitech G413",
    "Logitech Headphone",
    "a"
  ];
  List<String> listImage = [
    'images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image4.jpg'
  ];
  List<int> listPrice = [325000, 425000, 625000, 90];
  List<int> listQuantity = [0, 1, 0, 0];

  int get count => listItem.length;
  List<String> get cart => listItem;

  void increment() {
    {
      listQuantity[global.Q]++;
      notifyListeners();
    }
  }

  void reduction() {
    if (listQuantity[global.Q] > 0) {
      {
        listQuantity[global.Q]--;
        notifyListeners();
      }
    }
  }
}
