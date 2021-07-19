import 'package:flutter/material.dart';
import 'package:flutter_rrs_app/utility/my_style.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimary,
        toolbarHeight: wid / 5,
        title: Center(child: Text('บัญชีผู้ใช้งาน')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration:
                  ShapeDecoration(color: ksecondary, shape: CircleBorder()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sitanan Phubunkhong',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  width: 450,
                  height: 350,
                  color: ksecondary,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
