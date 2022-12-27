import 'package:stacked/stacked.dart';
import 'package:stacked_base/app/app.locator.dart';
import 'package:stacked_base/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginScreenViewModel extends BaseViewModel {
  String name = 'Zeeshan';

  // nav service
  final _navService = locator<NavigationService>();

  LoginScreenViewModel();

  navigateToHome() {
    _navService.navigateTo(
      Routes.homeView,
      arguments: HomeViewArguments(name: name),
    );
  }
}
