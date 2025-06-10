import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  bool isSelected =true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField Full Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // FIRST TEXTFIELD
              TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your name',
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: const Icon(Icons.account_circle),
                  suffixIcon: const Icon(Icons.check),
                  // prefix: Container(
                  //   padding: const EdgeInsets.all(4),
                  //   child: const Icon(Icons.star),
                  // ),
                  prefixText: 'Mr./Ms. ',
                  suffixText: ' Done',
                  labelText: 'Name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.yellow[100],
                ),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.ltr,
                keyboardType: TextInputType.text,
                obscureText: false,
                maxLines: 1,
                maxLength: 20,
              ),

              const SizedBox(height: 20),

              // SECOND TEXTFIELD (Password field)
              TextField(
                obscureText: isSelected,
                decoration: InputDecoration(
                  icon: const Icon(Icons.lock),
                  hintText: 'Enter your password',
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      isSelected = !isSelected;
                    });
                  }, icon: Icon(Icons.visibility_off)),
                  // prefix: Container(
                  //   padding: const EdgeInsets.all(4),
                  //   child: const Icon(Icons.security),
                  // ),
                  prefixText: 'PWD: ',
                  suffixText: '',
                  labelText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.ltr,
                keyboardType: TextInputType.text,
                // Password hiding enabled
                maxLines: 1,
                maxLength: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

