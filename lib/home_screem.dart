import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_screem/login_screem.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You are logged in.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
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
                        builder: (context) => const LoginScreem()),
                  );
                },
                child: const Center(
                  child: Text(
                    'SIGN OUT',
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
          ),
        ],
      ),
    );
  }
}
