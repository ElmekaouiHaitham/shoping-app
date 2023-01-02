import 'package:ecommerce/data/api/api.dart';
import 'package:ecommerce/view/auth/forgot_password/controller/forgot_password_controller.dart';
import 'package:ecommerce/view/auth/login/controller/login_controller.dart';
import 'package:ecommerce/view/auth/signup/controller/signup_controller.dart';
import 'package:get/get.dart';

import '../../view/auth/reset_password/controller/change_password_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiClient());
    Get.lazyPut(() => SignUpController(Get.find()));
    Get.lazyPut(() => LoginController(Get.find()));
    Get.lazyPut(() => ForgotPasswordController(Get.find()));
    Get.lazyPut(() => ChangePasswordController(Get.find()));
  }
}
