import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('Hi, Welcome Back'),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
