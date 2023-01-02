import 'package:ecommerce/router/app_routes.dart';
import 'package:ecommerce/widgets/scaffold_stuff/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../core/constants/colors.dart';

class MyScaffold extends StatelessWidget {
  final int selectedIndex;
  final Widget body;
  const MyScaffold(
      {super.key, required this.body, required this.selectedIndex});

  final List<String> dist = const <String>[
    AppRoutes.home,
    AppRoutes.favorite,
    AppRoutes.cart,
    AppRoutes.settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainBackgroundColor,
        drawer: MyDrawer(
          selectedIndex: selectedIndex,
        ),
        appBar: AppBar(
          // Set the app bar to be transparent
          backgroundColor: Colors.transparent,
          // Remove the shadow
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              // Display the hamburger menu icon
              icon: const Icon(
                FontAwesomeIcons.barsStaggered,
                size: 19,
                color: Colors.black,
              ),
              // Open the drawer when the icon is pressed
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
          actions: [
            IconButton(
              // Display the user icon
              icon: const Icon(
                FontAwesomeIcons.user,
                size: 19,
                color: Colors.black,
              ),
              // Add an action when the icon is pressed
              onPressed: () {},
            )
          ],
        ),
        body: body,
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              showSelectedLabels: false,
              elevation: 10,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey),
                  label: 'Home',
                  activeIcon: Icon(Icons.home, color: mainColor),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite, color: Colors.grey),
                    label: 'Favorite',
                    activeIcon: Icon(Icons.favorite, color: mainColor)),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart, color: Colors.grey),
                  activeIcon: Icon(Icons.shopping_cart, color: mainColor),
                  label: 'Shopping Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.grey),
                  activeIcon: Icon(Icons.person, color: mainColor),
                  label: 'Profile',
                ),
              ],
              onTap: (int index) {
                if (selectedIndex == index) return;
                Get.toNamed(dist[index]);
              },
            ),
          ),
        ));
  }
}
