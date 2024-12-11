// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';
import 'package:nectar/pages/mainpage/homepage.dart';
import 'package:nectar/pages/registration_page/sign_in_page.dart';
// import 'package:nectar/pages/registration_page/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                      const Text("Sign Up",
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Enter your credentials to continue",
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
                            const TextField(
                              keyboardType: TextInputType
                                  .emailAddress, // Email keyboard type
                              decoration: InputDecoration(
                                labelText: 'Username',
                                border: UnderlineInputBorder(),

                                // Optional email icon
                              ),
                            ),
                            const SizedBox(height: 20),
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
                            // Password TextField with Eye Icon
                            TextField(
                              obscureText:
                                  !_isPasswordVisible, // Toggles password visibility
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border:
                                    const UnderlineInputBorder(), // Optional lock icon
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
                      const Text("By continuing you have agree to Our? "),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Term of Service ',
                              style: TextStyle(
                                color:
                                    kSplashScreenColor, // Highlight Sign Up in blue
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Text("and "),
                          GestureDetector(
                            onTap: () {
                              // Navigate to Sign-Up page logic
                              print("Navigate to Sign-Up page");
                            },
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color:
                                    kSplashScreenColor, // Highlight Sign Up in blue
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
                                  builder: (context) => const HomeScreenPage(),
                                  fullscreenDialog: true,
                                ),
                              );
                              print("object");
                            },
                            child: const Center(
                              child: Text("Sign Up",
                                  style: TextStyle(
                                    fontFamily: 'Gilroy-Bold',
                                    // fontWeight: FontWeight.w600,
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
                          const Text("Already have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignInPage()));
                              // Navigate to Sign-Up page logic
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color:
                                    kSplashScreenColor, // Highlight Sign Up in blue
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
