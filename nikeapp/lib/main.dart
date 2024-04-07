import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nikeapp/mainentrance.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.oswaldTextTheme()),
      debugShowCheckedModeBanner: false,
      home: MainEntrance(),
    );
  }
}
