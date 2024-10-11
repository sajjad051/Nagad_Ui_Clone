

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:nagad_ui/Screen/login_screen.dart';
import 'package:nagad_ui/Screen/pin_screen.dart';
import 'package:nagad_ui/Screen/verify_otp.dart';

abstract class Routes {
  static const login = '/login';
  static const pin = '/pin';
  static const verifyOtp = '/verifyOtp';

}

abstract class AppPage {
  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.pin,
      page: () => PinScreen(),
    ),
    GetPage(
      name: Routes.verifyOtp,
      page: () => VerifyOtp(),
    ),

  ];
}
