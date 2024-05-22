import 'package:flutter/material.dart';
import 'package:skin_first/presentation/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          background: Colors.white,
          primary: const Color(0xff2260FF),
        ),
        textTheme: const TextTheme(
            titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(fontSize: 16),
            bodySmall: TextStyle(fontSize: 14)),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
