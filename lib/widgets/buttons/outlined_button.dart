import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final Widget? child;

  final void Function()? onTap;

  final double width;
  final double height;

  const MyOutlinedButton(
      {super.key, this.child, this.onTap, this.width = 60, this.height = 60});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        height: height,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.5),
            child: child,
          ),
        ),
      ),
    );
  }
}
