import 'package:flutter/material.dart';

void main() {
  runApp(const MyPaddingDemo());
}

class MyPaddingDemo extends StatelessWidget {
  const MyPaddingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Padding with EdgeInsets Examples"),
        ),
        body: Center(
          child: Column(
            children: [
              // EdgeInsets.all(int)
              Card(
                color: Colors.blue[100],
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: const Text("EdgeInsets.all(16)"),
                ),
              ),
              const SizedBox(height: 20),

              // EdgeInsets.symmetric(horizontal, vertical)
              Card(
                color: Colors.purple[100],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: const Text("EdgeInsets.symmetric(horizontal:30, vertical:10)"),
                ),
              ),
              const SizedBox(height: 20),

              // EdgeInsets.only(left, top, right, bottom)
              Card(
                color: Colors.green[100],
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5, right: 40, bottom: 15),
                  child: const Text("EdgeInsets.only(left:20, top:5, right:40, bottom:15)"),
                ),
              ),
              const SizedBox(height: 20),

              // EdgeInsets.fromLTRB(left, top, right, bottom)
              Card(
                color: Colors.indigo[100],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                  child: const Text("EdgeInsets.fromLTRB(10, 20, 30, 40)"),
                ),
              ),
              const SizedBox(height: 20),

              // EdgeInsetsDirectional.all(int)
              Card(
                color: Colors.pink[100],
                child: Padding(
                  padding: const EdgeInsetsDirectional.all(12),
                  child: const Text("EdgeInsetsDirectional.all(12)"),
                ),
              ),
              const SizedBox(height: 20),

              // EdgeInsetsDirectional.only(start, top, end, bottom)
              Card(
                color: Colors.yellowAccent[100],
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 15, top: 25, end: 35, bottom: 10),
                  child: const Text("EdgeInsetsDirectional.only(start:15, top:25, end:35, bottom:10)"),
                ),
              ),
              const SizedBox(height: 20),

              // EdgeInsetsDirectional.fromSTEB(start, top, end, bottom)
              Card(
                color: Colors.teal[100],
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 15, 25, 35),
                  child: const Text("EdgeInsetsDirectional.fromSTEB(5, 15, 25, 35)"),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
