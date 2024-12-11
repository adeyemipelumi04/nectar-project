// import 'dart:ui';

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';

import 'location_page.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                // Background image
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/background.jpg'),
                      fit: BoxFit.none,
                    ),
                  ),
                ),

                Container(
                  color: Colors.white.withOpacity(0.95),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Icon(Icons.arrow_back_ios),
                      SizedBox(
                        height: 50,
                      ),
                      Text("Enter your 4-digit code",
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 35,
                      ),
                      Text("Code",
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            // fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black,
                          )),
                      // SizedBox(
                      //   height: 15,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom 2/3 for other content
          Expanded(
            flex: 2,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      //labelText: ',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                print("Hello");
                              },
                              child: Text(
                                "Please wait",
                                style: TextStyle(
                                    color: kSplashScreenColor, fontSize: 16),
                              )),
                          SizedBox(
                            // color: kSplashScreenColor,
                            width: 70,
                            height: 70,
                            child: FloatingActionButton(
                                backgroundColor: kSplashScreenColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LocationPage()));
                                },
                                child: const Icon(Icons.arrow_forward_ios,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
