import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonPrimary extends StatelessWidget {
  const IconButtonPrimary({super.key, required this.onPressed, required this.icon});
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
