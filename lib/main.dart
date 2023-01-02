import 'package:ecommerce/core/utils/initial_bindings.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/router/app_routes.dart';
import 'package:ecommerce/view/details/details.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Auth Template',
      initialRoute: AppRoutes.home,
      // home: const ProductDetail(),
      getPages: AppRoutes.pages,
      initialBinding: InitialBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// width: 360
// height: 687
