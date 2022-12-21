//stateless class generate
// DashScreen
import 'package:first_app/home_screen.dart';
import 'package:first_app/profile_screen.dart';
import 'package:flutter/material.dart';

class DashScreen extends StatefulWidget { //When Error Occured --> alt+Enter
  // alt+Enter --> import material Import
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  static final List<Widget> _page=<Widget>[
    HomeScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
          label: "Home"),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
          label: "Profile"
          ),

        ],


      ),
    );
  }
}
