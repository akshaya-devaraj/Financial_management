import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View demo"),
          backgroundColor: Colors.red.shade400,
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          //reverse: true,
         // padding: EdgeInsets.all(50.0), - for shrinking the box
         // itemExtent: 200, // changes the size of all the containers
          prototypeItem: const SizedBox(height: 500.0,width:200.0),//changes the size of all the container


          children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 500.0,
              width: 150.0,
              color: Colors.pinkAccent,
              child: Center(
               child: Text("container 1"),
              )

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.purple.shade100,
              alignment: Alignment.center,
              child: Text("Container 2",
              style: TextStyle(
                color: Colors.red
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.pinkAccent.shade100,
              alignment: Alignment.center,
              child: Text("container 3"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.pinkAccent.shade200,
                child: Center(
                  child: Text("container 4"),
                )

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.pinkAccent.shade400,
              alignment: Alignment.center,
              child: Text("Container 5",
                style: TextStyle(
                    color: Colors.green
                ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.purple.shade400,
              alignment: Alignment.center,
              child: Text("container 6"),
            ),
          ),

        ],
        )

        ),
      );
  }
}
