import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rrs_app/utility/my_constant.dart';
import 'package:flutter_rrs_app/utility/my_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListRestaurant extends StatefulWidget {
  const ListRestaurant({Key? key}) : super(key: key);

  @override
  _ListRestaurantState createState() => _ListRestaurantState();
}

class _ListRestaurantState extends State<ListRestaurant> {
  @override
  @override
  void initState() {
    super.initState();
    readRestaurant();
  }

  Future<Null> readRestaurant() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? id = preferences.getString('id');
    print('id = $id');

    String url =
        '${Myconstant().domain}/my_login_rrs/getRestaurantWhereidRestaurant.php?isAdd=true&id=$id';
    Response response = await Dio().get(url);
    print('res ==> $response');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimary,
        title: Text('ร้านอาหาร'),
      ),
    );
  }
}
