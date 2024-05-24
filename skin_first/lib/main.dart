import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_first/presentation/authentications_page/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color(0xff2260FF);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skin First',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent, background: Colors.white, primary: mainColor, onPrimary: mainColor),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: mainColor,
          ),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(Colors.white),
          ),
        ),
        textTheme: TextTheme(
            titleLarge: GoogleFonts.leagueSpartan(
              fontSize: 48,
              fontWeight: FontWeight.w100,
              color: mainColor,
            ),
            titleMedium: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            titleSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: mainColor,
            ),
            bodyMedium: const TextStyle(fontSize: 16),
            bodySmall: const TextStyle(fontSize: 14),
            displaySmall: TextStyle(
              fontSize: 12,
              color: mainColor,
            ),
            labelSmall: const TextStyle(fontSize: 12, color: Colors.black45)),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
