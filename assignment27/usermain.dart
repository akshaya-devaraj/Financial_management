import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/User.dart';

void main()
{
  runApp(getmyAPI());
}
class getmyAPI extends StatefulWidget {
  const getmyAPI({super.key});



  @override
  State<getmyAPI> createState() => _getmyAPIState();
}

class _getmyAPIState extends State<getmyAPI> {

  @override
  void initState()
  {
    getApi();
    super.initState();
  }

  Future getApi()
  async{
    http.Response response;
    response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
   // print(response.statusCode);
    var dataMap=jsonDecode(response.body);
    //print(dataMap);
    List<User> luser=[];
    for(var i in dataMap)
      {
       User u= User(name:i['name'],email: i['email'],username: i['username']);
       luser.add(u);
      }
    return luser;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("REST API WITH MODEL CLASS"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        
        body: Center(
          child: FutureBuilder(future: getApi(),
              builder: (BuildContext context,AsyncSnapshot snapshot)
              {
              return Container(
                child: ListView.builder(itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                  );
                }),
              );
              }
          ),
        ),
      ),
    );
  }
}

