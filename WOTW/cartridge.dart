import 'package:flutter/foundation.dart';
import 'bottle.dart';

class CartRidge extends ChangeNotifier {
  late Bottle _bottle;
  final List<int> _itemIds = [];

  Bottle get bottle => _bottle;

  set bottle(Bottle newBottle) {
    _bottle = newBottle;
    notifyListeners();
  }

  List<dynamic> get bottles => _itemIds.map((id) => _bottle.get(id)).toList();
  // initVal
  int get totalPrice =>
      bottles.fold(0, (total, current) => total + int.parse(current));

  void add(Bottle bottle) {
    _itemIds.add(bottle.id);
    notifyListeners();
  }

  void remove(Bottle bottle) {
    _itemIds.remove(bottle.id);
    notifyListeners();
  }
}
