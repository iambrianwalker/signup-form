import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';
import 'signup_screen.dart';

class SuccessScreen extends StatefulWidget {
  final String userName;
  final String email;

  const SuccessScreen({
    super.key,
    required this.userName,
    required this.email, // 👈 FIXED
  });

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 3));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // MAIN CONTENT
          Center(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 120,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Welcome ${widget.userName}!",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Your account has been created successfully 🎉",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 15),

                  // ✅ EMAIL DISPLAY
                  Text(
                    "Email: ${widget.email}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupPage(),
                        ),
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12,
                      ),
                    ),
                    child: const Text("Back"),
                  ),
                ],
              ),
            ),
          ),

          // CONFETTI
          ConfettiWidget(
            confettiController: _controller,
            blastDirection: -pi / 2,
            emissionFrequency: 0.05,
            numberOfParticles: 25,
            gravity: 0.1,
          ),
        ],
      ),
    );
  }
}