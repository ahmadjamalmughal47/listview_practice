import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  Color myColor;

  SecondScreen(this.myColor);

  @override
  _SecondScreenState createState() => _SecondScreenState(myColor);
}

class _SecondScreenState extends State<SecondScreen> {
  Color myColor;

  _SecondScreenState(this.myColor);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: myColor,
            expandedHeight: 200.0,
            title: Text("sliverappbar"),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return MyElement(
                ExpansionTileData("Title", "Subtitle", myColor),
              );

            }
            ),
          ),
        ],
      ),
    );
  }
}


int temp=0;
class MyElement extends StatelessWidget {
  ExpansionTileData etd;

  MyElement(this.etd);

  @override
  Widget build(BuildContext context) {
    temp++;
    return ExpansionTile(
      title: Text(etd.title),
      subtitle: Text(etd.subtitle),
      backgroundColor: etd.color,
      children: [
        temp == 1 ? Image.network("https://www.xtrafondos.com/wallpapers/vertical/gato-6965.jpg" , height: 200) : Text("some child"),
      ],
    );
  }
}

class ExpansionTileData {
  Color color;
  String title;
  String subtitle;

  ExpansionTileData(this.title, this.subtitle, this.color);
}
