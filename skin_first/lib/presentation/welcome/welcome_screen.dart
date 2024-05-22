import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/log_in_button.dart';
import 'package:skin_first/presentation/buttons/sign_in_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset('assets/images/welcome_icon.png'),
                  const SizedBox(height: 12),
                  Text(
                    'Skin First',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Dermatology Center',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Discover personalized skincare and expert treatments with us. Your radiant skin journey begins here.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 24),
                  const LogInButton(),
                  const SignInButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
