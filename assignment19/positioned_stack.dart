import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack & Positioned Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack and Positioned Example'),
        ),
        body: Center(
            child: Stack(
               clipBehavior: Clip.none, // controls if children can overflow
               alignment: Alignment.center, // aligns unpositioned children
               fit: StackFit.loose, // size of stack based on children
               textDirection: TextDirection.ltr, // layout direction
              children: [
                // Background container
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue[100],
                  child: Center(child: Text('Base Layer')),
                ),
                // Positioned top-left
                Positioned(
                  // top: 10,
                  // left: 10,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.red,
                    child: Text('TL'),
                  ),
                ),

                // Positioned bottom-right
                Positioned(
                  bottom: -10,
                  right: 10,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                    child: Center(child: Text('BR')),
                  ),
                ),

                // Positioned center with fixed size
                Positioned(
                  top: 100,
                  left: 200,
                  width: 80,
                  height: 80,
                  child: Container(
                    color: Colors.orange,
                    child: Center(child: Text('Middle')),
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}
