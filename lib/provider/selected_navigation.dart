
import 'package:flutter/material.dart';

class UiSelected extends ChangeNotifier{


 int _selected = 0;
 int get selected => _selected;


 void selecteditem(int i){
  _selected = i;
  notifyListeners();
 }


}