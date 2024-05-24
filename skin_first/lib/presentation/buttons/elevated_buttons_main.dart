import 'package:flutter/material.dart';

class ElevatedButtonPrimary extends StatelessWidget {
  const ElevatedButtonPrimary({
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
          padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(100, 8, 100, 8))),
      child: Text(
        textString,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
      ),
    );
  }
}
