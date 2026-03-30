import 'package:flutter/material.dart';
import '../screens/signup_screen.dart';

class WelcomeScreen extends StatefulWidget{

  const WelcomeScreen(super.key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20), // space between text and button

            ElevatedButton(
              onPressed: () {
                // TODO: navigate to signup screen
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
