import 'package:flutter/cupertino.dart';

class UiSelected extends ChangeNotifier{

  int _selected =0;
  int get selected => _selected;


  void selectedItemNavigation(int i){
    _selected = i;
    notifyListeners();

  }




}