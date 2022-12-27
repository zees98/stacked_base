import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_base/model/cart_service.dart';
import 'package:stacked_base/views/home-view/home_view.dart';
import 'package:stacked_base/views/login_screen/login_screen_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginScreenView, initial: true),
  MaterialRoute(page: HomeView),
  // TODO: Add your routes here
], dependencies: [
  LazySingleton(classType: DialogService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: CartService),
  //TODO: Inject your dependencies here
])
class AppSetup {}


// TODO: Use this command to generate new outputs
// flutter pub run build_runner build --delete-conflicting-outputs