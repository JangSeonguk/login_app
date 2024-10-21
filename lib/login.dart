import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                "images/codingchef.png",
                width: 150,
                height: 150,
              )
                  .animate()
                  .fade()
                  .slideY(begin: -3, end: 0)
                  .animate(onPlay: (controller) => controller.repeat())
                  .shake(hz: 4, curve: Curves.ease, duration: 1800.ms),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Welcom back!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
                  .animate()
                  .fade(delay: 500.ms)
                  .slideX(
                    begin: -2,
                    end: 0,
                  )
                  .tint(
                    color: Colors.purple,
                    delay: 1000.ms,
                  ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Sign in to continue",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ).animate().fade(delay: 500.ms).slideX(
                    begin: 2,
                    end: 0,
                  ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
