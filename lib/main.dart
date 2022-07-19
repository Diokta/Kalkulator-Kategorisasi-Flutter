import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalkulator/pages/home_page.dart';

const primaryColor = Colors.white;
const secondaryColor = Colors.grey;
const borderColor = Colors.black;
const textColor = Colors.black;
const buttonColor = Colors.grey;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: GoogleFonts.playfairDisplayTextTheme(
                Theme.of(context).textTheme)),
        home: const HomePage());
  }
}
