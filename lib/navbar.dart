import 'package:flutter/material.dart';

import 'colors.dart';
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.all(10),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBaritem(
            icon: Icons.arrow_back,
          ),
          Text('Now Playing',style: TextStyle(color: darkprimary,fontSize: 18,fontWeight: FontWeight.w600),),
          NavBaritem(
            icon: Icons.list,
          ),
        ],
      ),
    );
  }
}
class NavBaritem extends StatelessWidget {
  final IconData icon;
  const NavBaritem({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: darkprimary.withOpacity(0.6),offset: Offset(5,10),spreadRadius: 3,blurRadius: 10),
          BoxShadow(color: Colors.blue,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
        ],
        color: primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon,color: darkprimary,),
    );
  }
}
