import 'package:flutter/material.dart';

void main() => runApp(MyRadioApp());

class MyRadioApp extends StatefulWidget {
  @override
  _MyRadioAppState createState() => _MyRadioAppState();
}

class _MyRadioAppState extends State<MyRadioApp> {
  String _selectedOption = 'Option 3'; // default selected

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Radio in Container')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blue),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Choose an option:", style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),

                // Option 1
                Row(
                  children: [
                    Radio(
                      value: 'Option 1',
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    Text('Option 1'),
                  ],
                ),

                // Option 2
                Row(
                  children: [
                    Radio(
                      value: 'Option 2',
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    Text('Option 2'),
                  ],
                ),

                // Option 3
                Row(
                  children: [
                    Radio(
                      value: 'Option 3',
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value!;
                        });
                      },
                    ),
                    Text('Option 3'),
                  ],
                ),

                SizedBox(height: 15),
                Text("Selected: $_selectedOption"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}