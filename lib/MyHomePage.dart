import 'package:flutter/material.dart';
import 'package:listviewpractice/SecondScreen.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://www.xtrafondos.com/wallpapers/vertical/gato-6965.jpg",
        ),
        Positioned(
          bottom: 48.0,
          left: 10.0,
          right: 10.0,
          child: Container(
            height: 200.0,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(Colors.red),
                MyCard(Colors.blue),
                MyCard(Colors.yellow),
                MyCard(Colors.pink),
                MyCard(Colors.black),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MyCard extends StatelessWidget {

  Color myColor;
  MyCard(this.myColor);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondScreen(myColor)),
      ),
      child: Card(

          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 100.0,
          width: 200.0,
          color: myColor,
          padding: EdgeInsets.only(left: 200.0, right: 200.0, bottom: 30.0),
        ),
      ),
    );
  }
}
