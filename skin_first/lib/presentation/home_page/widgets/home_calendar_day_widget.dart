import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCalendarDayWidget extends StatelessWidget {
  const HomeCalendarDayWidget({super.key, required this.isTrue, required this.day});
  // TODO: Temporary Boolean variable name
  final bool isTrue;
  final String day;

  @override
  Widget build(BuildContext context) {
    if (isTrue) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white, border: Border.all(color: Colors.black)),
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(children: <Widget>[
            Text(
              day,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
            ),
            const Text('Tue'),
          ]),
        ),
      );
    } else {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff2260FF),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(children: <Widget>[
            Text(
              day,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
            ),
            Text('Mon', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white)),
          ]),
        ),
      );
    }
  }
}
