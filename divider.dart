import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyDivider());
}
class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Divider"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.yellowAccent,
                child: Text("Container 1"),
                alignment: Alignment.center,
              ),
              VerticalDivider(
                color: Colors.redAccent,
                width: 40,
                thickness: 1.0,
                indent: 20,
                endIndent: 20,
              ),
              Expanded(
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.greenAccent,
                  child: Text("Container 2"),
                  alignment: Alignment.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
