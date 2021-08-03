import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:to_do/screens/loginScreen.dart';
import 'package:to_do/screens/rootScreen/RootScreen.dart';
import 'package:to_do/screens/searchScreen/SearchScreen.dart';
import 'package:to_do/utils/routes.dart';
import 'package:to_do/widget/myday.dart';


void main() => runApp(ProviderScope(child: RootApp()));

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'To-Do',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        MyRouts.loginRoute: (context) => LoginPage(),
        MyRouts.rootRoute: (context) => RootScreen(),
        MyRouts.searchRoute: (context) => SearchScreen(),
        MyRouts.mydayRoute: (context) => MyDay(),
      },   
    );
  }
}

class TodoListRouteArguments {
  final String title;
  final bool isNormalList;

  TodoListRouteArguments(this.title, this.isNormalList);
}












