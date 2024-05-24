import 'package:flutter/material.dart';
import 'package:skin_first/presentation/authentications/sign_up/sign_up_screen.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen()),
        );
      },
      child: Text(
        "I Don't have an account",
        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic, color: Colors.blueAccent),
      ),
    );
  }
}
