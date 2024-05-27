import 'package:flutter/material.dart';
import 'package:travel/models/input.dart';
import 'package:travel/pages/homePage.dart';
import 'package:travel/pages/signup.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _SignUpState();
}

class _SignUpState extends State<Login> {
  final etelpController = TextEditingController();
  final passwordController = TextEditingController();

  void google() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Welcome!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      input(
                        controller: etelpController,
                        hintText: 'Email/Telephone',
                        obscureText: false,
                      ),
                      input(
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 1,
                              color: Colors.black,
                            )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '   or   ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 1,
                              color: Colors.black,
                            ))
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: ContinueWithGoogle()),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have account?",
                                style: TextStyle(fontSize: 15),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 20,
                    backgroundColor: Color.fromRGBO(29, 60, 91, 1),
                    // shadowColor: Color.fromRGBO(26, 46, 67, 1),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }

  Widget ContinueWithGoogle() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        backgroundColor: Color.fromARGB(255, 204, 206, 211),
        minimumSize: const Size.fromHeight(50),
      ),
      child: Row(
        children: [
          Image.asset(
            "lib/images/assets/google.jpg",
            height: 17,
          ),
          Text(
            "  Continue with Google",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget login() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        backgroundColor: Color.fromRGBO(29, 60, 91, 1),
        // shadowColor: Color.fromRGBO(26, 46, 67, 1),
        minimumSize: const Size.fromHeight(50),
      ),
      child: const Text(
        "Log in",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
