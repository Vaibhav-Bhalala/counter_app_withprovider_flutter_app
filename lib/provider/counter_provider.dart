import 'package:counter_app/model/counter_model.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  CounterModel counterModel = CounterModel(count: 0);

  void icreament(){
    counterModel.count++;
    notifyListeners();
  }

  void decreament(){
    counterModel.count--;
    notifyListeners();
  }
}