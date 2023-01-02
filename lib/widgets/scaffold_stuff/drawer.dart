import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  final int selectedIndex;
  const MyDrawer({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: mainBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Text('Hello!\nHaitham',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black)),
          ),
          _buildListTile(context, 'Home', Icons.home, selectedIndex == 0,
              onTap: () => Get.toNamed(AppRoutes.home)),
          _buildListTile(
              context, 'Favorite', Icons.favorite, selectedIndex == 1,
              onTap: () => Get.toNamed(AppRoutes.favorite)),
          _buildListTile(
              context, 'Card', Icons.shopping_cart, selectedIndex == 2,
              onTap: () => Get.toNamed(AppRoutes.cart)),
          _buildListTile(
              context, 'Account', Icons.account_circle, selectedIndex == 3),
          _buildListTile(
              context, 'Dark mode', Icons.dark_mode, selectedIndex == 4),
          _buildListTile(context, 'Logout', Icons.logout, selectedIndex == 4),
        ],
      ),
    );
  }

  Widget _buildListTile(
      BuildContext context, String title, IconData icon, bool selected,
      {void Function()? onTap}) {
    return ListTile(
        leading: Icon(
          icon,
          color: selected ? mainColor : Colors.black,
        ),
        title: Text(title,
            style: TextStyle(color: selected ? mainColor : Colors.black)),
        onTap: onTap);
  }
}
