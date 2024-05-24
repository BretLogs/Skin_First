import 'package:flutter/material.dart';

class ElevatedButtonSecondary extends StatelessWidget {
  const ElevatedButtonSecondary({
    super.key,
    required this.onPressed,
    required this.textString,
  });

  final Function() onPressed;
  final String textString;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff2260FF)),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      child: Text(
        textString,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
      ),
    );
  }
}
