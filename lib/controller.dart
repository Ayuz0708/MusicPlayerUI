import 'package:flutter/material.dart';
import 'colors.dart';
class Playercontrol extends StatelessWidget {
  const Playercontrol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Controls(icon: Icons.repeat),
          Controls(icon: Icons.skip_previous,),
          Player(),
          Controls(icon: Icons.skip_next,),
          Controls(icon: Icons.shuffle,)
        ],
      ),
    );
  }
}
class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      width: 80,
      decoration: BoxDecoration(
          color: primary,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: darkprimary.withOpacity(0.6),offset: Offset(5,10),spreadRadius: 3,blurRadius: 10),
            BoxShadow(color: Colors.blue,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
          ]
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(color: darkprimary,shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: darkprimary.withOpacity(0.6),offset: Offset(5,10),spreadRadius: 3,blurRadius: 10),
                    BoxShadow(color: Colors.blue,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
                  ]
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: primary,shape: BoxShape.circle),
              child:Center(child: Icon(Icons.play_arrow,size: 40,)),
            ),
          )
        ],
      ),
    );
  }
}
class Controls extends StatelessWidget {
  final IconData icon;
  const Controls({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: primary,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: darkprimary.withOpacity(0.6),offset: Offset(5,10),spreadRadius: 3,blurRadius: 10),
          BoxShadow(color: Colors.blue,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
        ]
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(color: darkprimary,shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: darkprimary.withOpacity(0.6),offset: Offset(5,10),spreadRadius: 3,blurRadius: 10),
                    BoxShadow(color: Colors.blue,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
                  ]
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: primary,shape: BoxShape.circle),
              child: Center(child: Icon(icon)),
            ),
          )
        ],
      ),
    );
  }
}
