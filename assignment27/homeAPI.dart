import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class callAPI extends StatefulWidget {
  const callAPI({super.key});

  @override
  State<callAPI> createState() => _callAPIState();
}

class _callAPIState extends State<callAPI> {

  Map<String,dynamic>? mapData;
  @override
  void initState()
  {
    hitAPI();
    super.initState();
  }

  Future hitAPI() async
  {
     http.Response response;
    response =await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    print(response.statusCode);
     mapData=jsonDecode(response.body);
     for(int i=0;i<mapData!.length;i++)
       {
         print(mapData?['data'][i]['email']);
       }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("REST Handling"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: ListView(
            children: [
              ListTile(
                title: Text(mapData!['data'][0]['first_name']),
                subtitle: Text(mapData!['data'][0]['email']),
              ),
              ListTile(
                title: Text(mapData!['data'][1]['first_name']),
                subtitle: Text(mapData!['data'][1]['email']),
              ),
              ListTile(
                title: Text(mapData!['data'][2]['first_name']),
                subtitle: Text(mapData!['data'][2]['email']),
              ),
              ListTile(
                title: Text(mapData!['data'][3]['first_name']),
                subtitle: Text(mapData!['data'][3]['email']),
              )
            ],
          ),
        ),
      ),
    );
  }
}


