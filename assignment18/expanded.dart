import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyExpandedApp());
}
class MyExpandedApp extends StatelessWidget {
  const MyExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expanded"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellowAccent,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
