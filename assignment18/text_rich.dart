import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyTextRich());
}
class MyTextRich extends StatelessWidget {
  const MyTextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TEXT.RICH DEMO"),
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
        ),
        body: Text.rich
          (
          TextSpan(
            text: "Welcome\n",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontFamily: 'sans-serif',

            ),
            children: [
              TextSpan(
                text: "i-exceed\n",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.red,
                  fontFamily: 'sans-serif',
                ),
               recognizer: TapGestureRecognizer()  ..onTap = ()
                   {
                   print("i-exceed tapped");
                   },
                 ),
              TextSpan(
                text: "example!",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ]
          )
        ),
      ),
    );
  }
}
