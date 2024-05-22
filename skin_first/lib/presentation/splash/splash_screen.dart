import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2260FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/splash_icon.png'),
            const SizedBox(height: 12),
            Text(
              'Skin First',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
            Text(
              'Dermatology Center',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
