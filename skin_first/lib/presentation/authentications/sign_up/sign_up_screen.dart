import 'package:flutter/material.dart';
import 'package:skin_first/presentation/authentications/log_in/log_in_screen.dart';
import 'package:skin_first/presentation/buttons/elevated_buttons_main.dart';
import 'package:skin_first/presentation/buttons/text_button_primary.dart';
import 'package:skin_first/presentation/splash/splash_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2017, 9, 7, 17, 30),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(' ')[0];
      });
    }
  }

  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create new Account',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xff2260FF),
                fontSize: 16,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'username',
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
                      prefixIcon: const Icon(Icons.person_outline),
                      // labelText: 'Email or Mobile Number',
                      hintText: 'John Doe',
                      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
                        'date of birth',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      TextField(
                        controller: _dateController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'YYYY-MM-DD',
                          prefixIcon: const Icon(Icons.calendar_month),
                          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                        ),
                        onTap: _selectDate,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'password',
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
                      hintText: '•••••••••',
                      prefixIcon: const Icon(Icons.lock),
                      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                      suffixIcon: const Icon(Icons.visibility),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    're-enter password',
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
                      hintText: '•••••••••',
                      prefixIcon: const Icon(Icons.lock_outline),
                      hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black45),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                children: <Widget>[
                  ElevatedButtonPrimary(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SplashScreen()));
                    },
                    textString: 'Sign up!',
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'or sign up with',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: const Color.fromRGBO(0, 0, 0, 0.5)),
                  ),
                  // const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // IconButton(onPressed: () {}, icon: Icon(Icons.)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.facebook_outlined)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.markunread)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an Account?',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextButtonPrimary(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const LogInScreen()));
                        },
                        textString: 'Log in!',
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
