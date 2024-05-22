import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_first/presentation/splash/splash_screen.dart';
import 'package:skin_first/presentation/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skin First',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          background: Colors.white,
          primary: const Color(0xff2260FF),
        ),
        textTheme: TextTheme(
            titleLarge: GoogleFonts.leagueSpartan(
              fontSize: 48,
              fontWeight: FontWeight.w100,
              color: const Color(0xff2260FF),
            ),
            titleMedium: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            titleSmall: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff2260FF),
            ),
            bodyMedium: const TextStyle(fontSize: 16),
            bodySmall: const TextStyle(fontSize: 14)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
