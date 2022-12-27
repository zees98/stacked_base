import 'package:stacked/stacked.dart';
import 'package:stacked_base/app/app.locator.dart';
import 'package:stacked_base/app/app.router.dart';
import 'package:stacked_base/model/cart_service.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginScreenViewModel extends BaseViewModel {
  String name = 'Zeeshan';

  // nav service
  final _navService = locator<NavigationService>();
  final _cartService = locator<CartService>();

  get cartCount => _cartService.total;

  LoginScreenViewModel();

  navigateToHome() {
    _navService.navigateTo(
      Routes.homeView,
      arguments: HomeViewArguments(name: name),
    );
  }

  void addItem() {
    _cartService.add(Item('Item', 100));
    notifyListeners();
  }

  void removeItem() {
    if (_cartService.cartItems.isNotEmpty) {
      _cartService.cartItems.removeLast();
    }
    notifyListeners();
  }
}
