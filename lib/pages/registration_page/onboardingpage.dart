// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';
import 'package:nectar/pages/registration_page/sign_up_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      position: DecorationPosition.background,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/images/pic1.jpeg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
                height: 100,
                width: 75,
                child: Image.asset('lib/assets/images/carrot22.png')),
            const Text("Welcome",
                style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w600,
                  fontSize: 48,
                  color: Colors.white,
                )),
            const Text("to our store",
                style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w600,
                  fontSize: 48,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text("Get your groceries in as fast as one hour",
                style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  // fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                borderRadius: BorderRadius.circular(12.0),
                color: kSplashScreenColor,
                child: SizedBox(
                  height: 67,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                          fullscreenDialog: true,
                        ),
                      );
                      print("object");
                    },
                    child: const Center(
                      child: Text("Get Started",
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
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 7,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(8)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
