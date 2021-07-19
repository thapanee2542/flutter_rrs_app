import 'package:flutter/material.dart';
import 'package:flutter_rrs_app/utility/my_style.dart';

class OrderFood extends StatefulWidget {
  OrderFood({Key? key}) : super(key: key);

  @override
  _OrderFoodState createState() => _OrderFoodState();
}

class _OrderFoodState extends State<OrderFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimary,
        title: Text('สั่งอาหาร'),
      ),
    );
  }
}
