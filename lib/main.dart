import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(16),
              child: Text(
                '0',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              CalculatorButton('7'),
              CalculatorButton('8'),
              CalculatorButton('9'),
              CalculatorButton('/'),
            ],
          ),
          Row(
            children: <Widget>[
              CalculatorButton('4'),
              CalculatorButton('5'),
              CalculatorButton('6'),
              CalculatorButton('*'),
            ],
          ),
          Row(
            children: <Widget>[
              CalculatorButton('1'),
              CalculatorButton('2'),
              CalculatorButton('3'),
              CalculatorButton('-'),
            ],
          ),
          Row(
            children: <Widget>[
              CalculatorButton('0'),
              CalculatorButton('.'),
              CalculatorButton('='),
              CalculatorButton('+'),
            ],
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String label;
  CalculatorButton(this.label);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            label,
            style: TextStyle(fontSize: 24),
          ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
