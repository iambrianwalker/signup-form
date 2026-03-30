import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget{

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Padding(
        padding: EdgeInsets.all(16),
        return Column(
          //Greeting
          Text(
            "Welcome",
            style: ,
          ),

          EdgeInsets.all(16),

          //SignUp Button
          
        ),
      ),
    );
  }
}