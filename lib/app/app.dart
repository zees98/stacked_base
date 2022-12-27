import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_base/views/home-view/home_view.dart';
import 'package:stacked_base/views/login_screen/login_screen_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginScreenView, initial: true),
  MaterialRoute(page: HomeView),
  // MaterialRoute(page: SecondView),
], dependencies: [
  LazySingleton(classType: DialogService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: SnackbarService),
])
class AppSetup {}
