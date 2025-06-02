import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  return runApp(MyLazyLoading());
}
class MyLazyLoading extends StatelessWidget {
  const MyLazyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lazy Loading"),
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: 30,
            itemBuilder: (BuildContext context, int index)
            {
                  return lazy_loading(index);
            }
        ),
      ),
    );
  }
  Widget lazy_loading(int index)
  {
      print("lazy loading called $index times");
      return ListTile(
        leading: Icon(Icons.person),
        title: Text("data $index"),
      );
  }
}

