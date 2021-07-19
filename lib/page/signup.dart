import 'package:flutter/material.dart';
import 'package:flutter_rrs_app/utility/my_style.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? chooseType;
  String? name, user, email, phonenumber, password, confirmpassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          myLogo(),
          MyStyle().mySizebox(),
          nameForm(),
          userForm(),
          emailForm(),
          phonenumberForm(),
          passwordForm(),
          againpasswordForm(),
          MyStyle().mySizebox(),
          MyStyle().mySizebox(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MyStyle().showTitleH2('ชนิดของสมาชิก :'),
          ),
          userRadio(),
          shopRadio(),
          MyStyle().mySizebox(),
          MyStyle().mySizebox(),
          registerButtom(),
        ],
      ),
    );
  }

  Widget userRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 250.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                  value: 'User',
                  groupValue: chooseType,
                  onChanged: (value) {
                    setState(() {
                      chooseType = value.toString();
                    });
                  },
                ),
                Text('ผู้ใช้งานทั่วไป', style: TextStyle(fontSize: 15))
              ],
            ),
          ),
        ],
      );
  Widget shopRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 250.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                  value: 'Shop',
                  groupValue: chooseType,
                  onChanged: (value) {
                    setState(() {
                      chooseType = value.toString();
                    });
                  },
                ),
                Text(
                  'ร้านอาหาร',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
        ],
      );
  ElevatedButton registerButtom() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kprimary,
          onPrimary: Colors.white,
        ),
        onPressed: () {},
        child: Text(
          'Register',
          style: TextStyle(fontSize: 20.0),
        ));
  }

  Widget nameForm() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Container(
          width: 250.0,
          child: TextField(
            onChanged: (value) => name = value.trim(),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: MyStyle().darkColor,
              ),
              labelStyle: TextStyle(color: MyStyle().darkColor),
              labelText: 'Name :',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor),
                  borderRadius: BorderRadius.circular(50)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().primaryColor),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
      );
  Widget userForm() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Container(
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
        ),
      );
  Widget emailForm() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Container(
          width: 250.0,
          child: TextField(
            onChanged: (value) => user = value.trim(),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: MyStyle().darkColor,
              ),
              labelStyle: TextStyle(color: MyStyle().darkColor),
              labelText: 'Email :',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor),
                  borderRadius: BorderRadius.circular(50)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().primaryColor),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
      );
  Widget phonenumberForm() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Container(
          width: 250.0,
          child: TextField(
            onChanged: (value) => user = value.trim(),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
                color: MyStyle().darkColor,
              ),
              labelStyle: TextStyle(color: MyStyle().darkColor),
              labelText: 'PhoneNumber :',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor),
                  borderRadius: BorderRadius.circular(50)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().primaryColor),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
      );

  Widget passwordForm() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Container(
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
        ),
      );
  Widget againpasswordForm() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Container(
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
              labelText: 'ConfirmPassword :',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().darkColor),
                  borderRadius: BorderRadius.circular(50)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyStyle().primaryColor),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
      );
  Widget myLogo() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyStyle().showLogo(),
        ],
      );
}
