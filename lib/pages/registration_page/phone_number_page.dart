import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';
import 'package:nectar/pages/registration_page/otp_page.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key? key}) : super(key: key);

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
                // Background image
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/images/background.jpg'), // Replace with your image
                      fit: BoxFit.none, // Adjust how the image fills the space
                    ),
                  ),
                ),
                // Semi-transparent overlay for fade effect
                Container(
                  color: Colors.white
                      .withOpacity(0.95), // Adjust opacity for desired fade
                ),
                // Centered text over the faded image
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text("Enter your Phone Number",
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text("Mobile Number",
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
            flex: 2, // This defines 2/3 of the screen
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextField(
                    keyboardType: TextInputType.number, // Email keyboard type
                    decoration: InputDecoration(
                      labelText: '+880',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                                      builder: (context) => const OtpPage()));
                            },
                            child: const Icon(Icons.arrow_forward_ios,
                                color: Colors.white)),
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
