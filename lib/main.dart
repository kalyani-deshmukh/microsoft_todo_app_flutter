import 'package:flutter/material.dart';
import 'package:to_do/screens/rootScreen/RootScreen.dart';
//import 'package:microsoft_todo/screens/searchScreen/SearchScreen.dart';
//import 'package:microsoft_todo/screens/todoListScreen/TodoListScreen.dart';
//import 'package:microsoft_todo/screens/settingsScreen/SettingsScreen.dart';

void main() => runApp( RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'To-Do',
      initialRoute: '/',
      routes: {
        '/': (context) => RootScreen(),
        //'searchRoute': (context) => SearchScreen(),
        //'todoListRoute': (context) => TodoListScreen(),
        //'settingsRoute': (context) => SettingsScreen()
      },   
    );
  }
}

class TodoListRouteArguments {
  final String title;
  final bool isNormalList;

  TodoListRouteArguments(this.title, this.isNormalList);
}


















/*
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

*/