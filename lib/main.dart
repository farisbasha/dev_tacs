import 'package:dev_tacs/pages/home_page.dart';
import 'package:dev_tacs/pages/new_post_page.dart';
import 'package:dev_tacs/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.amber,
          fontFamily: GoogleFonts.montserrat().fontFamily
          /* dark theme settings */
          ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
