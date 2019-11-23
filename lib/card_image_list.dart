import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  String pathImage = 'assets/images/beach.jpeg';

  @override
  Widget build(BuildContext context){

    return Container(
      height:350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/images/beach_palm.jpeg'),
          CardImage('assets/images/beach.webp'),
          CardImage('assets/images/mountain_stars.webp'),
          CardImage('assets/images/mountain.jpeg'),
          CardImage('assets/images/river.jpeg'),
        ],
      ),
    );

  }
}