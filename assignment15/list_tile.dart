import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/main.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: ListView(children: [
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text("Dharshini"),
            subtitle: Text("Balance - 1000"),
            textColor: Colors.black,
            trailing: Icon(Icons.verified_sharp),
            iconColor: Colors.blue,

          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text("Archana"),
            subtitle: Text("Balance - 200"),
            textColor: Colors.black,
            trailing: Icon(Icons.verified_sharp),
            iconColor: Colors.blue,

          ),
        ],)
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
