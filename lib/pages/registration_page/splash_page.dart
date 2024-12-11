import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSplashScreenColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 100,
                  width: 75,
                  child: Image.asset("lib/assets/images/carrot22.png")),
              const Column(
                children: [
                  Text("nectar",
                      style: TextStyle(
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        color: Colors.white,
                        height: 0.3,
                      )),
                  Text("online groceries",
                      style: TextStyle(
                          fontFamily: 'Gilroy-Regular',
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 5)),
                ],
              ),
            ],
          )),
          const SizedBox(
            height: 10,
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
    );
  }
}
