import 'dart:math';

import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

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
          Navigator.pushNamed(context, '/');
        },
        child: Text("Go to Home Page"),
      ),
    );
  }
}
