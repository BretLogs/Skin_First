import 'package:flutter/material.dart';
import 'package:skin_first/presentation/authentications/log_in/log_in_screen.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => const LogInScreen()),
        );
      },
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff2260FF)),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(100, 8, 100, 8))),
      child: Text(
        'Log In!',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
      ),
    );
  }
}
