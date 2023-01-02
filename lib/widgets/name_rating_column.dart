import 'package:flutter/material.dart';
import 'texts/big_text.dart';
import 'texts/small_text.dart';

class NameRatingColumn extends StatelessWidget {
  final String text;
  const NameRatingColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(text: text, fontSize: 18),
          BigText(text: "100\$", fontSize: 16, color: Colors.grey[800]!)
        ],
      ),
      const SizedBox(
        height: 2,
      ),
      Row(
        children: [
          Wrap(
            children: List.generate(
              5,
              (index) => const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 15,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          SmallText(text: "4.9"),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
    ]);
  }
}
