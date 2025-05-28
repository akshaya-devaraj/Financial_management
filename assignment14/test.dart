import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/main.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        title: "Welcome",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white70,
          primaryColor: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home:MyAppBar());
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Hello Theme!"),
          backgroundColor: Colors.purple,
    ),
            body: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    color: Colors.greenAccent,
                    padding: EdgeInsets.only(left: 20.0,right: 50.0),
                    child: Text("Container 1")
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    color: Colors.green,
                    //padding: EdgeInsets.only(left: 20.0,right: 50.0),
                    child: Image.network(
                      'https://img.freepik.com/free-photo/closeup-shot-red-rose-with-dew-top-black_181624-28079.jpg?semt=ais_items_boosted&w=740',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}


