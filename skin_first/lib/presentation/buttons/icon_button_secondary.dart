import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonSecondary extends StatelessWidget {
  const IconButtonSecondary({super.key, required this.onPressed, required this.icon});
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
      ),
      splashColor: Theme.of(context).colorScheme.primary,
      icon: Icon(icon),
    );
  }
}
