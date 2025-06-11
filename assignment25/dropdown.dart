import 'package:flutter/material.dart';

void main() {
  runApp(MyDropdownApp());
}

class MyDropdownApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropdownExamplePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DropdownExamplePage extends StatefulWidget {
  @override
  _DropdownExamplePageState createState() => _DropdownExamplePageState();
}

class _DropdownExamplePageState extends State<DropdownExamplePage> {
  List<String> banking = ['Deposit', 'Withdraw', 'Balance Check', 'Transfer'];
  String? isSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Example"),
      ),
      body: Center(
        child: DropdownButton(
          value: isSelected,
          hint: Text("Select Option"),
          items: banking.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              isSelected = value;
            });
          },
        ),
      ),
    );
  }
}