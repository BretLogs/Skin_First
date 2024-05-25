import 'package:flutter/material.dart';

class ElevatedButtonTertiary extends StatelessWidget {
  const ElevatedButtonTertiary({
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
        backgroundColor: MaterialStatePropertyAll(Color(0xffCAD6FF)),
        foregroundColor: MaterialStatePropertyAll(Color(0xff2260FF)),
      ),
      child: Text(
        textString,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: const Color(0xff2260FF)),
      ),
    );
  }
}
