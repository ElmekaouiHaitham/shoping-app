import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/main.dart';
import 'package:ecommerce/widgets/scaffold_stuff/my_scaffold.dart';
import 'package:ecommerce/widgets/texts/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/texts/title_text.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      selectedIndex: 3,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: TitleText(
                  title: "Settings",
                ),
              ),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              leading: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: cardColor,
                ),
                child: const Icon(Icons.person, color: mainColor),
              ),
              title: BigText(text: 'View profile', color: Colors.grey[700]!),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              leading: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: cardColor,
                ),
                child: const Icon(Icons.lock, color: mainColor),
              ),
              title: BigText(color: Colors.grey[700]!, text: 'Change password'),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              leading: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: cardColor,
                ),
                child: const Icon(Icons.email, color: mainColor),
              ),
              title: BigText(color: Colors.grey[700]!, text: 'Email support'),
            ),
            ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              leading: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: cardColor,
                ),
                child: const Icon(Icons.help, color: mainColor),
              ),
              title: BigText(color: Colors.grey[700]!, text: 'Faq'),
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: cardColor,
                ),
                child: const Icon(Icons.notifications, color: mainColor),
              ),
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (bool value) {},
              ),
              title: BigText(color: Colors.grey[700]!, text: 'Notification'),
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: cardColor,
                ),
                child: const Icon(Icons.update, color: mainColor),
              ),
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (bool value) {},
              ),
              title: BigText(color: Colors.grey[700]!, text: 'Notification'),
            ),
            const ListTile(
              title: Center(
                  child: BigText(text: 'Delete account', color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
