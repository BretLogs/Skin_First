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
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.transparent,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          background: Colors.white,
          primary: mainColor,
          onPrimary: mainColor,
        ),
        searchBarTheme: SearchBarThemeData(
          textStyle: MaterialStateProperty.all(Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black54)),
          constraints: const BoxConstraints.expand(height: 52),
          shadowColor: const MaterialStatePropertyAll(Colors.transparent),
          elevation: const MaterialStatePropertyAll(1),
          padding: const MaterialStatePropertyAll(EdgeInsets.fromLTRB(8, 0, 16, 0)),
          hintStyle: MaterialStatePropertyAll(Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black45)),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: mainColor),
          iconTheme: IconThemeData(color: mainColor),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          centerTitle: true,
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(mainColor),
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        iconTheme: const IconThemeData(size: 16),
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
            bodyLarge: const TextStyle(fontSize: 20),
            bodyMedium: const TextStyle(fontSize: 16),
            bodySmall: const TextStyle(fontSize: 14),
            displaySmall: TextStyle(
              fontSize: 12,
              color: mainColor,
            ),
            labelLarge: const TextStyle(fontSize: 20, color: Colors.white),
            labelMedium: const TextStyle(fontSize: 16, color: Colors.white),
            labelSmall: const TextStyle(fontSize: 12, color: Colors.white)),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
