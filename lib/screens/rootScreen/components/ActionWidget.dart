import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Container(
          //padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(bottom: 10),
          child: IconButton(
            //padding: EdgeInsets.only(top: 0),
            icon: Icon(Icons.search_outlined, size: 40, color: Colors.indigoAccent[700],),
            tooltip: 'Search',
            onPressed: () {
              Navigator.pushNamed(context, 'searchRoute');
            }
          )
        ), 
      ],
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}