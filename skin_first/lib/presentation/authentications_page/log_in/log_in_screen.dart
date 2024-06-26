import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin_first/presentation/authentications_page/sign_up/sign_up_screen.dart';
import 'package:skin_first/presentation/buttons/elevated_buttons_main.dart';
import 'package:skin_first/presentation/buttons/text_button_primary.dart';
import 'package:skin_first/presentation/home_page/home_page.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
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
                'Welcome to Sys Go Dental Clinic, where your oral health and dazzling smile are our top priorities.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'email or mobile number',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black54),
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
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black54),
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
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  ElevatedButtonPrimary(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const HomePage(),
                        ),
                      );
                    },
                    textString: 'Log in',
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
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            size: 28,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mail,
                            size: 28,
                          )),
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
                  TextButtonPrimary(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const SignUpScreen()));
                    },
                    textString: 'Sign Up!',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
