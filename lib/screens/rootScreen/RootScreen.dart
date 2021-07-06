import 'package:flutter/material.dart';
import 'package:to_do/screens/rootScreen/components/ProfileWidget.dart';
import 'package:to_do/screens/rootScreen/components/TodoWidget.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
              children: <Widget>[
              //User profile
              ProfileWidget(),
              Divider(color: Colors.grey),
              Expanded (
                flex: 8,
                child: TodoWidget()
              ),
              Expanded(
                flex: 1,
                child: Container(padding: EdgeInsets.symmetric(horizontal: 10), child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.add, color: Colors.black)),
                        Text('New list', style: TextStyle(fontSize: 15, color: Colors.black))
                      ]
                    ),
                    IconButton(
                      icon: Icon(Icons.add_to_photos, color: Colors.black),
                      onPressed: (() {})
                    )
                  ]
                ))
              )],
              mainAxisAlignment: MainAxisAlignment.start
          )
        )
    );
  }
}