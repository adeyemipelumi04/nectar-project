// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/pages/registration_page/phone_number_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..rotateZ(3.8) //
                  ..scale(12.8)
                  ..translate(-12.0, 0.0),
                child: Image.asset(
                  'lib/assets/images/nectar.jpeg',
                  width: 160,
                  height: 150,
                ),
              ),
            ),
          ),
          const SizedBox(height: 150.0),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Get your groceries \nwith nectar",
                style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: Colors.black,
                )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.number, // Email keyboard type
              decoration: InputDecoration(
                labelText: '+880',
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text("Or connect with social media",
                  style: TextStyle(
                    fontFamily: 'Gilroy-Bold',
                    // fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color(0xff5383EC),
              child: SizedBox(
                height: 67,
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhoneNumber(),
                      ),
                    );
                    print("object");
                  },
                  child: const Center(
                    child: Text("Continue with Google",
                        style: TextStyle(
                          fontFamily: 'Gilroy-Bold',
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color(0xff4A66AC),
              child: SizedBox(
                height: 67,
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhoneNumber(),
                      ),
                    );
                  },
                  child: const Center(
                    child: Text("Continue with Facebook",
                        style: TextStyle(
                          fontFamily: 'Gilroy-Bold',
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50.0),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 7,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
