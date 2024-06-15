import 'package:flutter/material.dart';
import 'package:login_signup_screem/home_screem.dart';
import 'package:login_signup_screem/login_screem.dart';

class SignupScreem extends StatefulWidget {
  const SignupScreem({super.key});

  @override
  State<SignupScreem> createState() => _SignupScreemState();
}

class _SignupScreemState extends State<SignupScreem> {
  bool showPassword = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Stack(
      children: [
        Container(
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
          child: const Padding(
            padding: EdgeInsets.only(top: 60, left: 22),
            child: Text(
              "Create Your \nAccount",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                // /mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.check,
                        color: Colors.grey,
                      ),
                      label: Text(
                        'Full name',
                        style: TextStyle(
                          // fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff881736),
                        ),
                      ),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.check,
                        color: Colors.grey,
                      ),
                      label: Text(
                        'Phone or Email',
                        style: TextStyle(
                          // fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff881736),
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: showPassword ? false : true,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: showPassword
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          color: Colors.grey,
                        ),
                        label: const Text(
                          'Password',
                          style: TextStyle(
                            // fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff881736),
                          ),
                        )),
                  ),
                  TextField(
                    obscureText: showPassword ? false : true,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: showPassword
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          color: Colors.grey,
                        ),
                        label: const Text(
                          'Confirm Password',
                          style: TextStyle(
                            // fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff881736),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
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
                      child: const Center(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreem()));
                          },
                          child: const Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreem(),
                              ),
                            );
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
