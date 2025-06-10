import 'package:flutter/material.dart';

void main() {
  runApp(RadioListTileExample());
}

class RadioListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioListTilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RadioListTilePage extends StatefulWidget {
  @override
  _RadioListTilePageState createState() => _RadioListTilePageState();
}

class _RadioListTilePageState extends State<RadioListTilePage> {
  String selectedOption = "Option A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioListTile Example"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Select your favorite option:", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),

            // Option A
            RadioListTile(
              title: Text("Option A"),
              value: "Option A",
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value.toString();
                });
              },
            ),

            // Option B
            RadioListTile(
              title: Text("Option B"),
              value: "Option B",
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value.toString();
                });
              },
            ),

            // Option C
            RadioListTile(
              title: Text("Option C"),
              value: "Option C",
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value.toString();
                });
              },
            ),

            SizedBox(height: 20),
            Text(
              "You selected: $selectedOption",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}