
import 'package:flutter/cupertino.dart';

class UiSelected extends ChangeNotifier{

    int _selectedMenuOpt = 0; 
    int get selectedMenuOpt => _selectedMenuOpt;


    void selected(int i){
      _selectedMenuOpt = i;
      notifyListeners();
    }



}