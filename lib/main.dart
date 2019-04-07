import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _calculatorTile(String content,
      {bool isFirstRow = false,
      bool smaller = false,
      bool isBinaryOperator = false,
      bool isDelete = false}) {
    return Container(
      decoration: BoxDecoration(
          color: isFirstRow
              ? Color(0xffa7a7a7)
              : (isBinaryOperator
                  ? Color(0xffFC9700)
                  : (isDelete ? Colors.red : Color(0xff303030))),
          borderRadius: BorderRadius.circular(50)),
      width: 100,
      height: 100,
      margin: EdgeInsets.all(6),
      child: FlatButton(
        child: Text(
          "$content",
          style: TextStyle(
              color: isFirstRow ? Colors.black : Colors.white,
              fontSize: smaller ? 18 : 30),
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
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontSize: 62),
                    ),
                  ),
                ),
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                ),
                children: <Widget>[
                  // First Row
                  _calculatorTile("AC", isFirstRow: true, smaller: true),
                  _calculatorTile("+/-", isFirstRow: true, smaller: true),
                  _calculatorTile("%", isFirstRow: true),
                  _calculatorTile("÷", isBinaryOperator: true),

                  // Second Row
                  _calculatorTile("7"),
                  _calculatorTile("8"),
                  _calculatorTile("9"),
                  _calculatorTile("×", isBinaryOperator: true),

                  // Third Row
                  _calculatorTile("4"),
                  _calculatorTile("5"),
                  _calculatorTile("6"),
                  _calculatorTile("-", isBinaryOperator: true),

                  // Fourth Row
                  _calculatorTile("1"),
                  _calculatorTile("2"),
                  _calculatorTile("3"),
                  _calculatorTile("+", isBinaryOperator: true),

                  //
                  _calculatorTile("0"),
                  _calculatorTile("."),
                  _calculatorTile("DEL", isDelete: true, smaller: true),
                  _calculatorTile("=", isBinaryOperator: true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
