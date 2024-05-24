import 'package:flutter/material.dart';
import 'package:skin_first/presentation/authentications/log_in/log_in_screen.dart';
import 'package:skin_first/presentation/authentications/sign_up/sign_up_screen.dart';
import 'package:skin_first/presentation/buttons/elevated_buttons_main.dart';
import 'package:skin_first/presentation/buttons/text_button_primary.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                    ElevatedButtonPrimary(
                      textString: 'Log In!',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => const LogInScreen()),
                        );
                      },
                    ),
                    TextButtonPrimary(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen()),
                        );
                      },
                      textString: "I Don't have an account",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
