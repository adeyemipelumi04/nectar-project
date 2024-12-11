// import 'dart:ui';

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';
import 'package:nectar/pages/registration_page/log_in_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top 1/3 with the faded image and text
          Expanded(
            flex: 1, // This defines 1/3 of the screen
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/images/background.jpg'), // Replace with your image
                      fit: BoxFit.cover, // Adjust how the image fills the space
                    ),
                  ),
                ),

                Container(
                  color: Colors.white
                      .withOpacity(0.5), // Adjust opacity for desired fade
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                  child: Icon(Icons.arrow_back_ios),
                ),
                const SizedBox(
                  height: 10,
                ),

                Center(
                  child: SizedBox(
                    height: 200,
                    //width: 250,
                    child: Image.asset("lib/assets/images/location-bg.png",
                        fit: BoxFit.scaleDown),
                  ),
                ),
                //
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2, // This defines 2/3 of the screen
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 20, right: 20, bottom: 50),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("Select Your Location",
                            style: TextStyle(
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child:
                            Text("Switch on your location to stay in tune with",
                                style: TextStyle(
                                  fontFamily: 'Gilroy-Bold',
                                  // fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.black,
                                )),
                      ),
                      Center(
                        child: Text("what's happening in your area",
                            style: TextStyle(
                              fontFamily: 'Gilroy-Bold',
                              // fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  const TextField(
                    keyboardType: TextInputType.number, // Email keyboard type
                    decoration: InputDecoration(
                      labelText: 'Your Zone',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    keyboardType: TextInputType.number, // Email keyboard type
                    decoration: InputDecoration(
                      labelText: 'Your Area',
                      border: UnderlineInputBorder(),
                    ),
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
                          print("object");
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
