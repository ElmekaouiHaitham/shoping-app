import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextOverflow overflow;
  final FontWeight fontWeight;
  const BigText(
      {Key? key,
      required this.text,
      this.fontSize = 20,
      this.color = const Color(0xFF332d2b),
      this.overflow = TextOverflow.ellipsis,
      this.fontWeight = FontWeight.w500})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.poppins(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
