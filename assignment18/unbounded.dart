import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  return runApp(MyUnbounded());
}
class MyUnbounded extends StatelessWidget {
  const MyUnbounded({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unbounded height issue"),
          backgroundColor: Colors.yellowAccent,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (BuildContext con, int index)
                  {
                    return ListTile(
                      leading: Icon(Icons.star),
                      title: Text("Star $index"),
                      trailing: Icon(Icons.stacked_line_chart_outlined),
                    );
                  }
                  ),
            )
          ],
        ),
      ),
    );
  }
}
