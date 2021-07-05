import 'package:flutter/material.dart';
import 'package:to_do/pages/home_page.dart';
import 'package:to_do/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Homepage(),
        MyRouts.homeRoute: (context) => Homepage(),
        MyRouts.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
