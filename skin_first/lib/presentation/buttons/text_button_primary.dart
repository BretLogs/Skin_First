import 'package:flutter/material.dart';

class TextButtonPrimary extends StatelessWidget {
  const TextButtonPrimary({super.key, required this.onPressed, required this.textString});

  final Function() onPressed;
  final String textString;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textString,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic, color: Colors.blueAccent),
      ),
    );
  }
}
