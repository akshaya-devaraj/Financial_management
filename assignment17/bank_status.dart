import 'package:flutter/material.dart';
import 'bank.dart';

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
          leading: const Icon(Icons.account_balance, color: Colors.white),
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            "BankInfo",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: banks.length,
            itemBuilder: (BuildContext context, int index) {
              return getBankCard(index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.teal.shade100,
                thickness: 1.5,
                indent: 16,
                endIndent: 16,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget getBankCard(int index) {
    final bank = banks[index];
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: () {
          print("Tapped on ${bank.name}");
        },
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(bank.image),
          backgroundColor: Colors.grey[100],
        ),
        title: Text(
          bank.name,
          style: const TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          bank.subtitle,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.location_on, color: Colors.orange),
            SizedBox(width: 6),
            Icon(Icons.calendar_today, color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}
