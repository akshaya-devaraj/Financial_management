import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Text(
          'Parrots are a diverse group of brightly colored birds known for their intelligence and ability to mimic sounds, including human speech. They are characterized by strong, curved beaks and feet adapted for climbing trees, with two toes pointing forward and two backward.',
          textAlign: TextAlign.center,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontFamily: 'serif', // Options: serif, sans-serif, monospace
            backgroundColor: Colors.yellowAccent,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            wordSpacing: 5.0,
            fontStyle: FontStyle.italic,
            // decoration: TextDecoration.underline,
            // decorationColor: Colors.red,
            // decorationThickness: 2.0,
            // decorationStyle: TextDecorationStyle.wavy,
            shadows: [
              Shadow(
                color: Colors.grey,
                offset: Offset(3, 3),
                blurRadius: 4,
              ),
            ],
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    ),
  ));
}
