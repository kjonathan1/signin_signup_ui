import 'package:flutter/material.dart';
import 'package:login_signup_screem/home_screem.dart';
import 'package:login_signup_screem/login_screem.dart';
import 'package:login_signup_screem/signup_screem.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff881736),
              Color(0xff281537),
            ],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreem(),
              ),
            );
          },
          child: const Center(
            child: Text(
              'SIGN IN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // child:
        ),
      ),
    );
  }
}
