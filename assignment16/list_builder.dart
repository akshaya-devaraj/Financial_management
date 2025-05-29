import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.food_bank_outlined, color: Colors.white),
          backgroundColor: Colors.purple,
          centerTitle: true, // This centers the title text
          title: const Text(
            "DishDash",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body:  ListView.separated(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemCount: foo.length,
            itemBuilder: (BuildContext context, int index) {
              return getFood(index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                height: 10.0,
              );
            },
          ),
        ),
      );
  }
  Widget getFood(int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(foo[index].image ?? ''),
      ),
      title: Text(
        foo[index].name,
        style: const TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        "₹${foo[index].price?.toStringAsFixed(2)}",
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 14,
        ),
      ),
      trailing: const Icon(Icons.fastfood, color: Colors.purple),
    );
  }
}
