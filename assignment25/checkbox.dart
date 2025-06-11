import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckBoxButtonExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CheckBoxButtonExample extends StatefulWidget {
  @override
  _CheckBoxButtonExampleState createState() => _CheckBoxButtonExampleState();
}

class _CheckBoxButtonExampleState extends State<CheckBoxButtonExample> {
  bool ch1= false;
  bool ch2= false;
  bool ch3= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Button Example"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: ch1,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    ch1 = value!;
                  });
                },
              ),
              Text(
                "Java",
                style: TextStyle(fontSize: 16),
              ),

              Checkbox(
                value: ch2,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    ch2= value!;
                  });
                },
              ),
              Text(
                "Dart",
                style: TextStyle(fontSize: 16),
              ),

              Checkbox(
                value: ch3,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    ch3 = value!;
                  });
                },
              ),
              Text(
                "Flutter",
                style: TextStyle(fontSize: 16),
              ),

            ],
          ),
        ),
      ),
    );
  }
}