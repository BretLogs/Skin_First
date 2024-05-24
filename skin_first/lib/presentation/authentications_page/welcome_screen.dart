import 'package:flutter/material.dart';
import 'package:skin_first/presentation/authentications_page/log_in/log_in_screen.dart';
import 'package:skin_first/presentation/authentications_page/sign_up/sign_up_screen.dart';
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
                      'Sys Go',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Dental Services',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Welcome to Sys Go Dental Clinic, where your oral health and dazzling smile are our top priorities.',
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
