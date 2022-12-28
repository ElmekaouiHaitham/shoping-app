import 'package:ecommerce/home.dart';
import 'package:ecommerce/view/forgot_password/forgot.dart';
import 'package:ecommerce/view/login/login.dart';
import 'package:ecommerce/view/reset_password/reset_password.dart';
import 'package:ecommerce/view/signup/signup.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String login = '/login';

  static String signup = '/signup';

  static String reset = '/reset';

  static String forgot = '/forgot';

  static String home = '/home';

  static List<GetPage> pages = [
    GetPage(
      name: login,
      page: () => const Login(),
    ),
    GetPage(
      name: signup,
      page: () => const SignUp(),
    ),
    GetPage(
      name: forgot,
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: reset,
      page: () => const ResetPassword(),
    ),
    GetPage(
      name: home,
      page: () => const Home(),
    ),
  ];
}
