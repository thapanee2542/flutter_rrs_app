import 'package:flutter/material.dart';

import 'package:flutter_rrs_app/page/home_page.dart';
import 'package:flutter_rrs_app/utility/my_style.dart';
import 'package:flutter_rrs_app/utility/normal_dialog.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyStyle().showLogo(),
              MyStyle().mySizebox(),
              MyStyle().mySizebox(),
              MyStyle().mySizebox(),
              userForm(),
              MyStyle().mySizebox(),
              passwordForm(),
              MyStyle().mySizebox(),
              MyStyle().mySizebox(),
              loginButtom(),
              MyStyle().mySizebox(),
              myLogotable()
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton loginButtom() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kprimary, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          MaterialPageRoute route =
              MaterialPageRoute(builder: (context) => MyHomePage());
        },
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20.0),
        ));
  }

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'User :',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor),
                borderRadius: BorderRadius.circular(50)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      );
  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'Password :',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor),
                borderRadius: BorderRadius.circular(50)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      );
}

Widget myLogotable() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyStyle().showLogotable(),
      ],
    );
