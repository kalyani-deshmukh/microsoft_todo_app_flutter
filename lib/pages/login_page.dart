import 'package:flutter/material.dart';
import 'package:to_do/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
               SizedBox(
                height: 30,
              ),
              Text(
                '    Welcome to \nMicrosoft To Do',
                style: TextStyle(
                  fontSize: 24.0,
                ),  
              ),
              SizedBox(
                height: 20,
              ),
              
                Container(
                  height: 200,
                  width: 280,
                  child: Image.asset(
                  "asset/images/signin.png",
                  fit: BoxFit.fitWidth,
                ),
                ),
             
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    SizedBox(
                      child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email or phone number",
                            fillColor: Colors.grey,
                          ),  
                      ),
                      height: 40,
                      width: 300,

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text('Sign in',
                      style: TextStyle(color: Colors.indigo[900]),),
                      style: TextButton.styleFrom(minimumSize: Size(500, 30)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRouts.homeRoute);
                      },
                    ),
                    Text(
                      'Sign in with a work, school or \nMicrosoft account',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
