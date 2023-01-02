import 'package:ecommerce/widgets/scaffold_stuff/my_scaffold.dart';
import 'package:ecommerce/widgets/texts/big_text.dart';
import 'package:ecommerce/widgets/texts/small_text.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/texts/title_text.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      selectedIndex: 1,
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: TitleText(
                title: "Favorite",
              ),
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
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )),
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
