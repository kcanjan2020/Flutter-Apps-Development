import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'dash_screen.dart';

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
                const Gap(20),
                Text("Welcome to DentAll",style: TextStyle(fontSize: 18)),
                //const Gap(40),
                TextFormField(decoration: InputDecoration(hintText: "Enter UserName"
                ),
                ),
                const Gap(40),
                TextFormField(
                  decoration: InputDecoration(hintText:"Enter Password"
                  ),),
                ElevatedButton(onPressed:() => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>
                      const DashScreen(),
                  ))
                },
                    child: Text("Login")),
                const Gap(40),
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