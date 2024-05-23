import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log In',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xff2260FF),
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: const Color(0xff2260FF)),
              ),
              Text(
                'Welcome to Radiant Dermatology Center, where your journey to healthy, beautiful skin begins.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 40),
              Column(
                children: <Widget>[
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email or Mobile Number',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.visibility),
                        ),
                        obscureText: true,
                      ),
                      TextButton(onPressed: () {}, child: const Text('Forget Password')),
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  ElevatedButton(onPressed: () {}, child: const Text('Log in')),
                  const Text('or sign up with'),
                  Row(
                    children: <Widget>[
                      IconButton(onPressed: () {}, icon: const Icon(Icons.signal_cellular_4_bar_outlined)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit_outlined)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const Text("Don't have an account?"),
                  TextButton(onPressed: () {}, child: const Text('Sign Up!')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
