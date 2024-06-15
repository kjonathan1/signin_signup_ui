import 'package:flutter/material.dart';
import 'package:login_signup_screem/home_screem.dart';
import 'package:login_signup_screem/signup_screem.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreem(),
              ),
            );
          },
          child: const Center(
            child: Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          // child:
        ),
      ),
    );
  }
}
