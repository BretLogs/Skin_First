import 'package:flutter/cupertino.dart';
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
                            hintText: 'Password',
                            hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                            suffixIcon: const Icon(Icons.visibility),
                          ),
                          obscureText: true),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password?',
                            style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.blueAccent, fontStyle: FontStyle.italic),
                          )),
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff2260FF)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(50, 8, 50, 8))),
                    child: Text(
                      'Log in',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'or sign up with',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: const Color.fromRGBO(0, 0, 0, 0.5)),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // IconButton(onPressed: () {}, icon: Icon(Icons.)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.facebook_outlined)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.markunread)),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up!',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.blueAccent),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
