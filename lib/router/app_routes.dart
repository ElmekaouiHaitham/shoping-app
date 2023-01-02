import 'package:ecommerce/view/cart/cart.dart';
import 'package:ecommerce/view/favorite/favorite.dart';
import 'package:ecommerce/view/home/home.dart';
import 'package:ecommerce/view/auth/forgot_password/forgot.dart';
import 'package:ecommerce/view/auth/login/login.dart';
import 'package:ecommerce/view/auth/reset_password/reset_password.dart';
import 'package:ecommerce/view/auth/signup/signup.dart';
import 'package:ecommerce/view/settings/settings.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String login = '/login';

  static String signup = '/signup';

  static const String reset = '/reset';

  static const String forgot = '/forgot';

  static const String home = '/home';

  static const String cart = '/cart';

  static const String favorite = '/favorite';

  static const String settings = '/settings';

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
    GetPage(
      name: cart,
      page: () => const Cart(),
    ),
    GetPage(
      name: favorite,
      page: () => const Favorite(),
    ),
    GetPage(
      name: settings,
      page: () => const Settings(),
    ),
  ];
}
