import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyCircularAvatar());
}
class MyCircularAvatar extends StatelessWidget {
  const MyCircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CircularAvatar"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.orangeAccent[100],
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage("assets/images/dharshini.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
