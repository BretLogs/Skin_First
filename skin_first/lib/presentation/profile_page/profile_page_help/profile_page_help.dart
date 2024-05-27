import 'package:flutter/material.dart';

class ProfilePageHelp extends StatelessWidget {
  const ProfilePageHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help Center')),
      body: const Column(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Text('How can we help you?'),
                SearchBar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
