//First Flutter Application
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'Login_Screen.dart';

void main() {
  runApp(const MyApp());
}
// To Create a Class-->Type stless-->Tab
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(
          primaryColor: Colors.blue
      ),

      //When error occured --> alt+Enter
      home: const LoginScreen(),
    );

  }
}

