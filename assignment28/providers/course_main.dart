import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project2/statemanagement/providers/change_courses.dart';
import 'package:project2/statemanagement/providers/courses.dart';// if needed
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChangeCourse(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the subject from provider
    final course = Provider.of<ChangeCourse>(context).sub;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 120),
          Container(
            padding: EdgeInsets.only(top: 40, left: 140, right: 40),
            child: Text(
              "We are learning $course",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            color: Colors.grey,
            height: 90,
            width: double.infinity,
          ),
          SizedBox(height: 100),
          MyCourses(course: "Java"),
          SizedBox(height: 20),
          MyCourses(course: "python"),
          SizedBox(height: 20),
          MyCourses(course: "Go"),
          SizedBox(height: 20),
          MyCourses(course: "Dart"),
        ],
      ),
    );
  }
}
