import 'package:flutter/material.dart';

class HomeTileRestaurant extends StatefulWidget {
  const HomeTileRestaurant({Key? key}) : super(key: key);

  @override
  _HomeTileRestaurantState createState() => _HomeTileRestaurantState();
}

class _HomeTileRestaurantState extends State<HomeTileRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.restaurant),
                Text('ร้านอาหาร'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(249, 5, 5, 5),
                  child: Text('ดูทั้งหมด'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
