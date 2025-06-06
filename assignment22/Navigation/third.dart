import 'dart:math';

import 'package:flutter/material.dart';

import 'home.dart';
class MyThird extends StatelessWidget {
  const MyThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Third Page"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ElevatedButton(
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHome()));
        },
        child: Text("Go to First Page"),
      ),
    );
  }
}
