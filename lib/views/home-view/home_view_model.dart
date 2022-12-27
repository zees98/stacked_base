import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';
import '../../model/cart_service.dart';

class HomeViewModel extends BaseViewModel {
  // Add ViewModel specific code here

  // cart service
  final _cartService = locator<CartService>();
  get cartCount => _cartService.total;


  void clearCart() {
    _cartService.clearCart();
    notifyListeners();
  }


}
