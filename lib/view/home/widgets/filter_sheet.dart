import 'package:ecommerce/core/constants/colors.dart';
import 'package:ecommerce/widgets/buttons/button.dart';
import 'package:ecommerce/widgets/texts/big_text.dart';
import 'package:flutter/material.dart';

import '../../../widgets/choice_ships.dart';
import '../../../widgets/texts/title_text.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  final List<String> categories = [
    "All",
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

  final List<String> sortByChoices = [
    'Cheapest',
    'Highly Ranked',
    'Popular',
    'Newest',
    'oldest'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Add code to clear the filters here
                },
                child: const Text(
                  "Clear",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ),
              const BigText(text: "Filter"),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                  child: const FittedBox(
                    child: Icon(Icons.close),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Add the filter choices here
        const SizedBox(height: 20),
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
            selectedBgColor: cardColor,
          ),
        ),
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: TitleText(
              title: "Sort By",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: ChoiceChips(
            choices: sortByChoices,
            selectedBgColor: cardColor,
          ),
        ),
        const SizedBox(height: 20),
        MyButton(text: "Apply", onTap: () => Navigator.pop(context)),
      ],
    );
  }
}
