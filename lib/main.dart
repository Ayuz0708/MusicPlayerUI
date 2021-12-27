import 'package:flutter/material.dart';
import 'package:music_player/colors.dart';
import 'package:music_player/controller.dart';
import 'package:music_player/navbar.dart';

import 'albumart.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double sliderval = 2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Navbar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Albumart();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Sevenfold',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 26, color: darkprimary),
          ),
          Text(
            'The Sunrise',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 20, color: darkprimary),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 3,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)
            ),
            child: Slider(
              activeColor: darkprimary,
              inactiveColor: darkprimary.withOpacity(0.3),
              value: sliderval,
              onChanged: (value) {
                setState(() {
                  sliderval = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          Playercontrol(),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
