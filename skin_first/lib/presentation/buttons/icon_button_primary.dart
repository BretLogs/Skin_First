import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonPrimary extends StatelessWidget {
  const IconButtonPrimary({super.key, required this.onPressed, required this.icon});
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xffCAD6FF),
        ),
      ),
      icon: Icon(icon),
    );
  }
}
