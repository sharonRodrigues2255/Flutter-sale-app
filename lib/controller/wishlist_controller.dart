import 'package:flutter/material.dart';

class WishlistController with ChangeNotifier {
  List<int?>? wishlistProducts = [];

  addtowishlist(int? id) {
    if (wishlistProducts!.contains(id)) {
      wishlistProducts?.removeWhere((element) => element == id);
      notifyListeners();
    } else {
      wishlistProducts?.add(id);
      notifyListeners();
    }

    notifyListeners();
  }

  removefromwishlist(int? id) {
    notifyListeners();
  }
}
