// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';

import '../../components/item_card_data.dart';
import '../../components/item_data.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 30,
        ),
        const Text("My Cart",
            style: TextStyle(
              fontFamily: 'Gilroy-Bold',
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black,
            )),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey,
        ),
        SizedBox(
          height: screenHeight / 1.26,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: (cartitems.length),
              itemBuilder: (context, index) {
                final item = cartitems[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // width: 185,
                      height: 160,
                      child: CartPageCard(
                        name: item['name'],
                        image: item['image'],
                        details: item['details'],
                        price: item['price'],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 0.25,
                        thickness: 0.5,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Material(
            borderRadius: BorderRadius.circular(12.0),
            color: kSplashScreenColor,
            child: SizedBox(
              height: 65,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  _openSubmitCart;
                },
                child: Row(
                  //  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Center(
                      child: Text("Go to Checkout",
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            // fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "\$32.93",
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.grey[700]),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }

  void _openSubmitCart() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        // final screenHeight = MediaQuery.of(context).size.height;

        return Container(
            decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(16)),
              color: Colors.white,
            ),
            // height: screenHeight / 2,
            child: Padding(
                padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Checkout',
                          style: TextStyle(
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.cancel_outlined),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 15),
                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   itemCount: categoriesfilters.length,
                    //   itemBuilder: (context, index) {
                    //     return ListTile(
                    //       contentPadding: EdgeInsets.zero,
                    //       title: Row(
                    //         children: [],
                    //       ),
                    //     );
                    //   },
                    // ),
                    const SizedBox(height: 20),
                    Material(
                      borderRadius: BorderRadius.circular(12.0),
                      color: kSplashScreenColor,
                      child: SizedBox(
                        height: 65,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            print("object");
                          },
                          child: const Center(
                            child: Text("Apply Filter",
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
                )));
      },
    );
  }
}
