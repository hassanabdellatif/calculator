import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _Calculator createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  var num1 = 0, num2 = 0, result = 0;

  final TextEditingController num1Controller = TextEditingController(text: "0");
  final TextEditingController num2Controller = TextEditingController(text: "0");

  @override
  void dispose() {
    super.dispose();
    num1Controller.dispose();
    num2Controller.dispose();
  }

  void addition() {
    setState(() {
      num1 = int.parse(num1Controller.text);
      num2 = int.parse(num2Controller.text);
      result = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(num1Controller.text);
      num2 = int.parse(num2Controller.text);
      result = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(num1Controller.text);
      num2 = int.parse(num2Controller.text);
      result = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(num1Controller.text);
      num2 = int.parse(num2Controller.text);
      result = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF6800eb),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                " Result : $result",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              TextFormField(
                controller: num1Controller,
                decoration: InputDecoration(
                  labelText: 'Number 1',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: num2Controller,
                decoration: InputDecoration(
                  labelText: 'Number 2',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    child: Text('+'),
                    onPressed: addition,
                    color: Color(0xffd3d3d3),
                  ),
                  RaisedButton(
                    child: Text('-'),
                    onPressed: subtraction,
                    color: Color(0xffd3d3d3),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    child: Text('*'),
                    onPressed: multiplication,
                    color: Color(0xffd3d3d3),
                  ),
                  RaisedButton(
                    child: Text('/'),
                    onPressed: division,
                    color: Color(0xffd3d3d3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
