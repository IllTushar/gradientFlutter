import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(Colors.orange, Colors.red),
    ));

class Home extends StatefulWidget {
  Color color1;
  Color color2;

  Home(this.color1, this.color2);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var colorAlignmentStart = Alignment.topLeft;

  var colorAlignmentBottom = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Gradient Color")),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [widget.color1, widget.color2],
                  begin: colorAlignmentStart,
                  end: colorAlignmentBottom)),
          child: Center(child: Text("Hello Colors")),
        ));
  }
}
