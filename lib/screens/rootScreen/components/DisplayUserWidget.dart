
import 'package:flutter/material.dart';

class DisplayUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        //user avatar
         CircleAvatar(
          backgroundImage: AssetImage('asset/images/login.png'),
          radius: 16
        ),
        //user full name
        Container(
          padding: EdgeInsets.all(2),
          child: Column(
            children: <Widget>[
              Text(
              'Kalyani Deshmukh', 
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16
              )
            ),
           Text(
            'kalyanideshmukh002@gmail.com',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10
            )
          )
            ]
          ),
        )
        //user email
        
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}


/*
import 'package:flutter/material.dart';

class DisplayUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        //user avatar
         CircleAvatar(
          backgroundImage: AssetImage('asset/images/login.png'),
          radius: 16
        ),
        //user full name
        Container(
          margin: EdgeInsets.only(bottom: 5, top: 12),
          child: Text(
            'Kalyani Deshmukh', 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
            )
          )
        ),
        //user email
         Text(
          'kalyanideshmukh002@gmail.com',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12
          )
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
*/