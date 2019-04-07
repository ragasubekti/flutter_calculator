import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _calculatorTile(String content,
      {bool isColorful, bool smaller = false}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(50)),
      width: 100,
      height: 100,
      margin: EdgeInsets.all(10),
      child: FlatButton(
        child: Text(
          "$content",
          style: TextStyle(color: Colors.white, fontSize: smaller ? 18 : 24),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Expanded(
              //   child: Container(),
              // ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                ),
                children: <Widget>[
                  // First Row
                  _calculatorTile("AC"),
                  _calculatorTile("+/-"),
                  _calculatorTile("%"),
                  _calculatorTile("÷"),

                  // Second Row
                  _calculatorTile("7"),
                  _calculatorTile("8"),
                  _calculatorTile("9"),
                  _calculatorTile("×"),

                  // Third Row
                  _calculatorTile("4"),
                  _calculatorTile("5"),
                  _calculatorTile("6"),
                  _calculatorTile("-"),

                  // Fourth Row
                  _calculatorTile("1"),
                  _calculatorTile("2"),
                  _calculatorTile("3"),
                  _calculatorTile("+"),

                  //
                  _calculatorTile("0"),
                  _calculatorTile("."),
                  _calculatorTile("DEL", smaller: true),
                  _calculatorTile("="),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
