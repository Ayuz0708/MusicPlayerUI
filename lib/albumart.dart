import 'package:flutter/material.dart';
import 'package:music_player/colors.dart';
class Albumart extends StatelessWidget {
  const Albumart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
          child: Image.asset('images/pics1.jpg',fit: BoxFit.fill,
          )),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(20),
        boxShadow:[
          BoxShadow(color: darkprimary,offset: Offset(20,8),spreadRadius: 3,blurRadius: 20),
          BoxShadow(color: Colors.blue,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
        ],
      ),
    );
  }
}
