import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePageHelp extends StatelessWidget {
  const ProfilePageHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help Center')),
      body: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Text(
                    'How can we help you?',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                    child: SearchBar(
                      leading: Icon(Icons.search),
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
                      hintText: 'Search...',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
