import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack & Positioned - Real Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Profile Card')),
        body: Stack(
          clipBehavior: Clip.none,
         // alignment: Alignment.topCenter,
          children: [
            // Background banner
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Positioned Profile Image
            Positioned(
              top: 60,
              left: 35,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 46,
                  backgroundImage: AssetImage('assets/images/dharshini.jpg'),
                ),
              ),
            ),

            // Positioned Name & Title
            Positioned(
              top: 170,
              left: 20,
             // right: 0,
              child: Column(
                children: [
                  Text(
                    'Dharshini',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  ElevatedButton(onPressed: (){},
                      child: Text("Profile")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
