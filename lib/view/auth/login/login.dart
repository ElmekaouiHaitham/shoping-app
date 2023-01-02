import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/core/utils/responsive_size.dart';
import 'package:ecommerce/router/app_routes.dart';
import 'package:ecommerce/view/auth/login/controller/login_controller.dart';
import 'package:ecommerce/widgets/buttons/button.dart';
import 'package:ecommerce/widgets/buttons/outlined_button.dart';
import 'package:ecommerce/widgets/texts/title_text.dart';
import 'package:ecommerce/widgets/top_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/input_fields/text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    String title = "Login";
    String imgPath = "assets/images/login.png";
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopImage(
              imgPath: imgPath,
              size: Responsive.horizontalSize(360 * 0.67),
            ),
            TitleText(title: title),
            SizedBox(
              height: Responsive.verticalSize(15),
            ),
            MyTextField(
              controller: controller.emailController,
              hintText: "email address",
              keyboardType: TextInputType.emailAddress,
              width: width * 0.8,
              icon: const Icon(FontAwesomeIcons.at, size: 17),
            ),
            SizedBox(
              height: Responsive.verticalSize(20),
            ),
            MyTextField(
              controller: controller.passwordController,
              hintText: "password",
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              width: width * 0.8,
              icon: const Icon(Icons.lock_outline_rounded, size: 19),
              suffixText: "Forgot?",
              onSuffixTap: () => Get.toNamed(AppRoutes.forgot),
            ),
            SizedBox(
              height: Responsive.verticalSize(30),
            ),
            GetBuilder<LoginController>(builder: (cont) {
              return MyButton(
                showCircularBar: cont.isLoading.value,
                onTap: () => cont.login(),
                text: "Login",
              );
            }),
            Padding(
              padding: EdgeInsets.only(
                  top: Responsive.verticalSize(20),
                  bottom: Responsive.verticalSize(20)),
              child: Center(
                child: Text(
                  "Or, login with..",
                  style: GoogleFonts.poppins(),
                ),
              ),
            ),
            MyOutlinedButton(
                onTap: () => controller.loginWithGoogle(),
                child: Image.asset(
                  "assets/images/google.png",
                )),
            SizedBox(
              height: Responsive.verticalSize(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.signup),
                  child: Text(
                    "Register",
                    style: GoogleFonts.poppins(color: mainColor),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Responsive.verticalSize(15),
            ),
          ],
        )),
      ),
    );
  }
}
