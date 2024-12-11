// import 'package:flutter/cupertino.dart';
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/item_card_data.dart';

import '../../components/item_data.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Center(
            child: Text("Find Products",
                style: TextStyle(
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenWidth / 1.2,
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
                      flex: 1,
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
              const Icon(Icons.tune_sharp)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: screenHeight,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: (eggs.length / 2).ceil(),
              itemBuilder: (context, index) {
                final leftItem = eggs[index * 2];
                final rightItem =
                    index * 2 + 1 < eggs.length ? eggs[index * 2 + 1] : null;
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
        ],
      ),
    )));
  }
}
