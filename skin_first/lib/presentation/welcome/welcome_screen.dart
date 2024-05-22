import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/welcome_icon.png'),
              const Text('Skin First'),
              const Text('Dermatology Center'),
              const SizedBox(height: 24),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Column(
                children: <Widget>[
                  ElevatedButton(onPressed: () {}, child: const Text('Log in!')),
                  ElevatedButton(onPressed: () {}, child: const Text('Sign Up!')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
