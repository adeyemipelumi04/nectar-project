// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';
import 'package:nectar/components/item_card_data.dart';
import 'package:nectar/components/item_data.dart';
import 'package:nectar/pages/mainpage/product_details.dart';


class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  final reorderedItems = getReorderedItems();
  final secondorderItems = getsecondReorderedItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset("lib/assets/images/carrot11.png")),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_rounded, color: Colors.grey),
                SizedBox(width: 5.0),
                Text("Dhaka, Banassre",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search store',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'lib/assets/images/ad.PNG',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Exclusive Offer",
                    style: TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: Colors.black,
                    )),
                GestureDetector(
                  onTap: () {
                    print("See all");
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: kSplashScreenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailPage(
                                        productdetails: items,
                                      )));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 200,
                              child: ItemCard(
                                name: item['name'],
                                details: item['details'],
                                price: item['price'],
                                image: item['image'],
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Best Selling",
                    style: TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: Colors.black,
                    )),
                GestureDetector(
                  onTap: () {
                    // Navigate to Sign-Up page logic
                    print("See all");
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: kSplashScreenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: reorderedItems.length,
                itemBuilder: (context, index) {
                  final item = reorderedItems[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailPage(
                                        productdetails: items,
                                      )));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 200,
                              child: ItemCard(
                                name: item['name'],
                                details: item['details'],
                                price: item['price'],
                                image: item['image'],
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Groceries",
                    style: TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: Colors.black,
                    )),
                GestureDetector(
                  onTap: () {
                    print("See all");
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: kSplashScreenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pulses.length,
                itemBuilder: (context, index) {
                  final item = pulses[index];

                  final List<Color> backgroundColors = [
                    Colors.red[100]!,
                    Colors.blue[100]!,
                    Colors.green[100]!,
                    Colors.yellow[100]!,
                    Colors.purple[100]!,
                  ];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 250,
                      height: 300,
                      child: ImageNameCard(
                        name: item['name'],
                        image: item['image'],
                        backgroundColor:
                            backgroundColors[index % backgroundColors.length],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 310,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: secondorderItems.length,
                itemBuilder: (context, index) {
                  final item = secondorderItems[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailPage(
                                        productdetails: items,
                                      )));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 200,
                              child: ItemCard(
                                name: item['name'],
                                details: item['details'],
                                price: item['price'],
                                image: item['image'],
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
