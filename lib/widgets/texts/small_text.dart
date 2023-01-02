import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;
  FontWeight? fontWeight;
  SmallText(
      {Key? key,
      required this.text,
      this.fontSize = 12,
      this.color = const Color(0xFF332d2b),
      this.height = 1.3,
      fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: height,
        fontWeight: fontWeight,
        fontSize: fontSize,
        fontFamily: 'Roboto',
        color: color,
      ),
    );
  }
}
