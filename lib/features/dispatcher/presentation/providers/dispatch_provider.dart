import 'package:flutter/material.dart';

class DispatchesProvider with ChangeNotifier {
  List<String> _dispatches = [];

  List<String> get dispatches => _dispatches;

  void fetchDispatches() {
    // מדמה טעינת נתונים מהשרת
    _dispatches = ['נסיעה 1', 'נסיעה 2', 'נסיעה 3'];
    notifyListeners();
  }

  void publishNewDispatch(String dispatch) {
    _dispatches.add(dispatch);
    notifyListeners();
  }
}
