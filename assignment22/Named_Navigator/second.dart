import 'package:flutter/material.dart';


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("MySecond Page"),
        backgroundColor: Colors.green,
      ),
      body: ElevatedButton(
        onPressed: ()
        {
          Navigator.pushNamed(context, '/third');
        },
        child: Text("Go to signup Page"),
      ),
    );
  }
}
