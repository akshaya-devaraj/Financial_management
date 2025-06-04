import 'package:flutter/material.dart';

void main() {
  runApp(const MySizedBoxDemo());
}

class MySizedBoxDemo extends StatelessWidget {
  const MySizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("SizedBox Variations")),
        body: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
           // physics: BouncingScrollPhysics(),
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Standard SizedBox (spacing)
               Text("1. SizedBox (Vertical Space)", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(height: 100, color: Colors.green),
               SizedBox(height: 10),
              Container(height: 100, color: Colors.red),
               Divider(),

              // SizedBox.fromSize
               Text("2. SizedBox.fromSize", style: TextStyle(fontWeight: FontWeight.bold)),
               SizedBox(height: 10),
              SizedBox.fromSize(
                size:  Size(100, 50),
                child: ElevatedButton(
                  onPressed: () {},
                  child:  Text("fromSize"),
                ),
              ),
               Divider(),

              // SizedBox.shrink
               Text("3. SizedBox.shrink (with ConstrainedBox)", style: TextStyle(fontWeight: FontWeight.bold)),
               SizedBox(height: 10),
              ConstrainedBox(
                constraints:  BoxConstraints(
                  minWidth: 100,
                  minHeight: 50,
                ),
                child: SizedBox.shrink(
                  child: ElevatedButton(
                    onPressed: () {},
                    child:  Text("shrink"),
                  ),
                ),
              ),
               Divider(),

              // SizedBox.expand
               Text("4. SizedBox.expand", style: TextStyle(fontWeight: FontWeight.bold)),
               SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 200,
                ),
                child: SizedBox.expand(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("expand"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
