import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  return runApp(MyRender());
}
class MyRender extends StatelessWidget {
  const MyRender({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Render flex Overflow error"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                child: Image.network("https://images.pexels.com/photos/97533/pexels-photo-97533.jpeg?cs=srgb&dl=pexels-siva301in-97533.jpg&fm=jpg"),
              ),
            ),
            SizedBox(width: 15,),
            Expanded(
                child: Container(
                  child: Text("Parrots are a diverse group of brightly colored birds known for their intelligence and ability to mimic sounds, including human speech. They are characterized by strong, curved beaks and feet adapted for climbing trees, with two toes pointing forward and two backward. Parrots are social creatures and live in a variety of habitats, from tropical forests to urban areas, and come in many sizes and colors"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
