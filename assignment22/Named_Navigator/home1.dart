import 'package:flutter/material.dart';
import 'package:project2/Named_Navigator/second.dart';
import 'package:project2/Named_Navigator/third.dart';
void main()
{
  runApp(MyHome());
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomeApp(),
          '/second': (context) => const login(),
          '/third': (context) => const signup(),
        }
    );
  }
}
class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("MyHome Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
        onPressed: ()
        {
        Navigator.pushNamed(context, '/second');
        },
          child: Text("Go to Login page"),
        ),
      ),
    );
  }
}
