import 'package:flutter/material.dart';

class IconButtonTertiary extends StatelessWidget {
  const IconButtonTertiary({super.key, required this.onPressed, required this.icon});
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
