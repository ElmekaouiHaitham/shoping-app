import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/widgets/scaffold_stuff/my_scaffold.dart';
import 'package:ecommerce/widgets/texts/big_text.dart';
import 'package:ecommerce/widgets/texts/small_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/texts/title_text.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      selectedIndex: 2,
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: TitleText(
                title: "My Cart",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
            height: 50,
            decoration: const BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 5),
              ],
            ),
            child: Row(
              children: [
                SmallText(
                  text: '${3} items:',
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(width: 5),
                SmallText(
                  text: '100\$',
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: SmallText(
                    text: 'checkout',
                    color: mainColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          ...List.generate(
            20,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SizedBox(
                height: 100,
                child: Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onDismissed: (direction) {
                    // Add code to handle the delete action here
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset('assets/images/nike.png',
                              fit: BoxFit.fitHeight),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(
                              text: "Nike shoes",
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]!,
                            ),
                            const SizedBox(height: 5),
                            SmallText(
                              text: '100\$',
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // '-' icon inside a circle
                            Card(
                              elevation: 3,
                              shape: const CircleBorder(),
                              color: Colors.grey[200]!,
                              child: const SizedBox(
                                width: 25,
                                height: 25,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            // count number text
                            SmallText(text: '${5}', fontSize: 15),
                            // '+' icon inside a circle
                            const Card(
                              elevation: 3,
                              shape: CircleBorder(),
                              color: cardColor,
                              child: SizedBox(
                                width: 25,
                                height: 25,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
