
import 'package:flutter/material.dart';

class HomeTwoController extends ChangeNotifier {


  bool iscool = true;

  void updatecool() {
    iscool = !iscool;
    notifyListeners();
  }


}