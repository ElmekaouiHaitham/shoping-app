import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundedIcon extends StatelessWidget {
  final IconData icon;
  final Color bg_color;
  final Color iconColor;
  final double size;
  final double iconSize;
  const RoundedIcon(
      {Key? key,
      required this.icon,
      this.bg_color = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.size = 44,
      this.iconSize = 16})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bg_color,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
