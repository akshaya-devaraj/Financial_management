import 'package:flutter/material.dart';
import 'package:project2/Navigation/third.dart';

class MySecond extends StatelessWidget {
  const MySecond({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyThird()));
            },
            child: Text("Go to Third Page"),
        ),
    );
  }
}
