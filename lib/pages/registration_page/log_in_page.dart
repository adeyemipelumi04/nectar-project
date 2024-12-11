// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';
import 'package:nectar/pages/mainpage/nav_page.dart';
import 'package:nectar/pages/registration_page/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/background.jpg'),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white.withOpacity(0.95),
                ),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset("lib/assets/images/carrot11.png",
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
            child: Expanded(
                flex: 2, // This defines 2/3 of the screen
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Log in",
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Enter your email and password",
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            // fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Email TextField
                            const TextField(
                              keyboardType: TextInputType
                                  .emailAddress, // Email keyboard type
                              decoration: InputDecoration(
                                labelText: 'Email',
                                border: UnderlineInputBorder(),

                                // Optional email icon
                              ),
                            ),
                            const SizedBox(height: 20),

                            TextField(
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: const UnderlineInputBorder(),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("Navigate to Forgot Password");
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Material(
                        borderRadius: BorderRadius.circular(12.0),
                        color: kSplashScreenColor,
                        child: SizedBox(
                          height: 65,
                          width: double.infinity,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                  fullscreenDialog: true,
                                ),
                              );
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationPage()));
                            },
                            child: const Center(
                              child: Text("Submit",
                                  style: TextStyle(
                                    fontFamily: 'Gilroy-Bold',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: kSplashScreenColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Container(
                          height: 7,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ])),
          )
        ],
      ),
    );
  }
}
