import 'package:ecommerce/widgets/choice_ships.dart';
import 'package:ecommerce/view/home/widgets/items_list.dart';
import 'package:ecommerce/widgets/input_fields/rounded_text_field.dart';
import 'package:ecommerce/widgets/scaffold_stuff/my_scaffold.dart';
import 'package:ecommerce/widgets/texts/title_text.dart';
import 'package:ecommerce/view/home/widgets/view_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> categories = [
    "T-shirts",
    "Dresses",
    "Pants",
    "Skirts",
    "Jackets",
    "Coats",
    "Sweaters",
    "Hoodies",
    "Jumpsuits",
    "Rompers",
    "Shorts",
    "Leggings",
    "Lingerie",
    "Swimwear",
  ];


  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      selectedIndex: 0,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 20, right: 20),
              child: RoundedTextField(),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: TitleText(
                  title: "Popular",
                ),
              ),
            ),
            const MyViewList(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: TitleText(
                  title: "Category",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ChoiceChips(
                choices: categories,
              ),
            ),
            const ItemsList()
          ],
        ),
      ),
    );
  }
}
