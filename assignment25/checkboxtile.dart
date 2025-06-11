import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckBoxListTileExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CheckBoxListTileExample extends StatefulWidget {
  @override
  _CheckBoxListTileExampleState createState() => _CheckBoxListTileExampleState();
}

class _CheckBoxListTileExampleState extends State<CheckBoxListTileExample> {
  bool ch1 = false;
  bool ch2 = false;
  bool ch3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CheckboxListTile with Subtitle")),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Java"),
              subtitle: Text("Object-oriented programming language"),
              value: ch1,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  ch1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Dart"),
              subtitle: Text("Language used in Flutter development"),
              value: ch2,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  ch2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Flutter"),
              subtitle: Text("UI toolkit for building natively compiled apps"),
              value: ch3,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  ch3 = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}