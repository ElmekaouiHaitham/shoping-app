import 'package:ecommerce/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ChoiceChips extends StatefulWidget {
  final List<String> choices;

  const ChoiceChips(
      {super.key,
      this.selectedBgColor,
      this.unselectedBgColor,
      required this.choices});

  final Color? selectedBgColor;
  final Color? unselectedBgColor;

  @override
  State<ChoiceChips> createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  // Currently selected category
  String selectedCategory = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 0,
            runSpacing: 0,
            children: widget.choices
                .map((category) => CategoryChip(
                      text: category,
                      selectedBgColor: widget.selectedBgColor,
                      unselectedBgColor: widget.unselectedBgColor,
                      selected: category == selectedCategory,
                      onSelected: (value) {
                        setState(() {
                          selectedCategory = value;
                        });
                      },
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String text;
  final bool selected;
  final ValueChanged<String> onSelected;

  final Color? selectedBgColor;
  final Color? unselectedBgColor;

  const CategoryChip({
    Key? key,
    required this.text,
    required this.selected,
    required this.onSelected,
    this.selectedBgColor,
    this.unselectedBgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(text);
      },
      child: Chip(
        label: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.black : Colors.grey[600],
          ),
        ),
        backgroundColor: selected ? selectedBgColor : mainBackgroundColor,
      ),
    );
  }
}
