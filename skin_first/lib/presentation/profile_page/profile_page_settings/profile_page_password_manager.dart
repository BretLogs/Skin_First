import 'package:flutter/material.dart';
import 'package:skin_first/presentation/buttons/elevated_button_tertiary.dart';
import 'package:skin_first/presentation/buttons/text_button_primary.dart';

class ProfilePagePasswordManager extends StatelessWidget {
  const ProfilePagePasswordManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Password Manager')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'password',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      hintText: '•••••••••',
                      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                      suffixIcon: const Icon(Icons.visibility),
                    ),
                    obscureText: true),
                TextButtonPrimary(
                  onPressed: () {},
                  textString: 'Forget Password',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: <Widget>[
                Text(
                  'new password',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      hintText: '•••••••••',
                      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                    ),
                    obscureText: true),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: <Widget>[
                Text(
                  'confirm new password',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      hintText: '•••••••••',
                      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                    ),
                    obscureText: true),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(24),
        child: ElevatedButtonTertiary(onPressed: () {}, textString: 'Change Password'),
      ),
    );
  }
}
