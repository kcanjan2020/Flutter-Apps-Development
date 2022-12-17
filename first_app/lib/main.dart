import 'package:flutter/material.dart';

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
      home: const LoginScreen(),
    );

  }
}
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(   //Enter Double Shift--> Search-->pubspec-->Cupertino_icon:^1.0.2-->type->gap:^2.0.0-->Pub get
        child:Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Login,",style: TextStyle(fontSize: 22)),
                //Install Library
                //const Gap(30),
                Text("Welcome to DentAll",style: TextStyle(fontSize: 18)),
                //const Gap(40),
                TextFormField(decoration: InputDecoration(hintText: "Enter UserName"
                ),
                ),
                //const Gap(40),
                TextFormField(
                  decoration: InputDecoration(hintText:"Enter Password"
                  ),),
                ElevatedButton(onPressed:() => {},
                    child: Text("Login")),
                //const Gap(40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Forget Password"),
                    ElevatedButton(onPressed: (){
                    },
                        child: Text("Click Here"))
                  ],
                )

              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
