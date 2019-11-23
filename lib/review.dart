import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/images/people.jpg";
  String name = "Varuna Yasas";
  String info = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage,this.name,this.info,this.comment);

  @override
  Widget build(BuildContext context){

    final userName = Container(
      margin: EdgeInsets.only(
        left:20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'Lato'
        )

      )
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left:20
      ),
      child: Text(
        info,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          color: Color(0xFFa3a5a7)
        )

      )
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left:20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w900
        )

      )
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top:20,
        left:20
      ),
      width:80,
      height:80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,

      ],
    );


    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
  
}