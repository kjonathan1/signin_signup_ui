import 'package:flutter/material.dart';
import 'package:login_signup_screem/widgets/sign_in_button.dart';
import 'package:login_signup_screem/widgets/sign_up_button.dart';

class WelcomeScreem extends StatelessWidget {
  const WelcomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff881736),
              Color(0xff281537),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 135 * 3.141592653 / 180,
                child: const Icon(
                  Icons.fitness_center,
                  size: 120,
                  color: Colors.white,
                ),
              ),
              // Image.asset('assets/logo.png'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const SignInButton(),

              const SizedBox(
                height: 20,
              ),

              const SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
