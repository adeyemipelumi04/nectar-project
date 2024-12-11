// import 'package:flutter/cupertino.dart';
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/item_card_data.dart';

import '../../components/item_data.dart';

class BeveragesPage extends StatefulWidget {
  const BeveragesPage({Key? key}) : super(key: key);

  @override
  State<BeveragesPage> createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                        const Text("Beverages",
                            style: TextStyle(
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        IconButton(
                          icon: const Icon(Icons.tune),
                          onPressed: () {},
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: screenHeight,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: (beverages.length / 2).ceil(),
                      itemBuilder: (context, index) {
                        final leftItem = beverages[index * 2];
                        final rightItem = index * 2 + 1 < beverages.length
                            ? beverages[index * 2 + 1]
                            : null;
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  print('Tapped on ${leftItem['name']}');
                                },
                                child: SizedBox(
                                  width: 185,
                                  height: 260,
                                  child: ItemCard(
                                    name: leftItem['name'],
                                    image: leftItem['image'],
                                    details: leftItem['details'],
                                    price: leftItem['price'],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            rightItem != null
                                ? GestureDetector(
                                    onTap: () {
                                      print('Tapped on ${rightItem['name']}');
                                    },
                                    child: SizedBox(
                                      width: 185,
                                      height: 260,
                                      child: ItemCard(
                                        name: rightItem['name'],
                                        image: rightItem['image'],
                                        details: rightItem['details'],
                                        price: rightItem['price'],
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink()
                          ],
                        );
                      },
                    ),
                  )
                ]))));
  }
}
