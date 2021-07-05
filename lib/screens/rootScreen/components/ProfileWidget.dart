import 'package:flutter/material.dart';
import 'package:to_do/screens/rootScreen/components/ActionWidget.dart';
import 'package:to_do/screens/rootScreen/components/DisplayUserWidget.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 20, right: 15, left: 15),
      child: Row(
        children: <Widget>[
           DisplayUserWidget(),
           ActionWidget()
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
      )
    );
  }
}