import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Microsoft's To Do"),
      ),
      body: Center(
        child: Container(
          child: Text("What u wanna o today kiddo!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
