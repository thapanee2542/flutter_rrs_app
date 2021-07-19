import 'package:flutter/material.dart';

class HomeTilePopular extends StatefulWidget {
  const HomeTilePopular({Key? key}) : super(key: key);

  @override
  _HomeTilePopularState createState() => _HomeTilePopularState();
}

class _HomeTilePopularState extends State<HomeTilePopular> {
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
                Text('ร้านอาหารเป็นที่นิยม'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(190, 5, 5, 5),
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
