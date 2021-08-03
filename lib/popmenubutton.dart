import 'package:flutter/material.dart';

class MyPopupButton extends StatefulWidget {
  
  @override
  _MyPopupButtonState createState() => _MyPopupButtonState();
}

class _MyPopupButtonState extends State<MyPopupButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),  //don't specify icon if you want 3 dot menu
            //color: Colors.blue,
            itemBuilder: (context) => [
             const PopupMenuItem<int>(
              value: 0,
              child: ListTile(
                leading:Icon(Icons.sort),
                title:Text('Sort by'),
              )
              ),
            const PopupMenuItem<int>(
              value: 1,
              child: ListTile(
                leading:Icon(Icons.shortcut),
                title: Text("Add shortcut to homescreen"),
              )
              ),
              const PopupMenuItem<int>(
              value: 2,
              child: ListTile(
                leading: Icon(Icons.palette_outlined),
                title: Text("Change theme"),),
              ),
            ],
          onSelected: (item) => {print(item)},
      
    );
  }
}