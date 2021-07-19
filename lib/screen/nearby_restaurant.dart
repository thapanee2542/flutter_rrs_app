import 'package:flutter/material.dart';
import 'package:flutter_rrs_app/utility/my_style.dart';

class NearbtReataurant extends StatefulWidget {
  const NearbtReataurant({Key? key}) : super(key: key);

  @override
  _NearbtReataurantState createState() => _NearbtReataurantState();
}

class _NearbtReataurantState extends State<NearbtReataurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimary,
        title: Text('ร้านอาหารที่ใกล้เคียง'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(1, 1), blurRadius: 4)
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/1.jpg',
                    height: 150,
                    width: 280,
                  ),
                  Text('ชื่อร้านอาหาร'),
                  Text('พิกัด/สถานที่'),
                  Text('รีวิว'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
