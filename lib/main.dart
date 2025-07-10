import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fm/screen/dashboard.dart';
import 'package:fm/screen/login_screen.dart';
import 'bloc/logic_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => LoginBloc(),
        child: const Login(),
      ),
    );
  }
}
