

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:nagad_ui/Screen/login_screen.dart';

abstract class Routes {
  static const login = '/login';

}

abstract class AppPage {
  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
    ),

  ];
}
