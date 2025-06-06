import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/Navigation/second.dart';

void main()
{
  runApp(MyHome());
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomeApp(),
    );
  }
}
class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyHome Page"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MySecond()));
            },
            child: Text("Go to second page"),
          ),
        ),
    );
  }
}

