import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image.asset Example')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/burger.png', // Replace with your image path
            // width: 200,
            // height: 200,
            errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
              return const Text('No image');
            },
            repeat: ImageRepeat.repeatY, // Options: repeat, repeatX, repeatY, noRepeat
          ),
        ),
      ),
    );
  }
}
