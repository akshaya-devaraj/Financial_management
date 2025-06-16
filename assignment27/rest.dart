import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeAPI.dart';

void main()
{
  runApp(MyRestApp());
}
class MyRestApp extends StatefulWidget {
  const MyRestApp({super.key});

  @override
  State<MyRestApp> createState() => _MyRestAppState();
}

class _MyRestAppState extends State<MyRestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: callAPI(),
    );
  }
}
