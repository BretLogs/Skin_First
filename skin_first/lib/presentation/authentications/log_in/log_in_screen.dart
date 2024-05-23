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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'email or mobile number',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.email_outlined),
                      // labelText: 'Email or Mobile Number',
                      hintText: 'johndoe@email.com',
                      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'password',
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.left,
                      ),
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
                          hintText: 'Password',
                          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                          suffixIcon: const Icon(Icons.visibility),
                        ),
                        obscureText: true,
                      ),
                      // TextButton(onPressed: () {}, child: const Text('Forget Password?')),
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
