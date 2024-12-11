// import 'package:flutter/cupertino.dart';
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/item_card_data.dart';

import '../../components/item_data.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
          const SizedBox(height: 20),
          SizedBox(
            height: screenHeight,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: (productitems.length / 2).ceil(),
              itemBuilder: (context, index) {
                final leftItem = productitems[index * 2];
                final rightItem = index * 2 + 1 < productitems.length
                    ? productitems[index * 2 + 1]
                    : null;
                final List<Color> backgroundColors = [
                  Colors.red[100]!,
                  Colors.blue[100]!,
                  Colors.green[100]!,
                  Colors.yellow[100]!,
                  Colors.purple[100]!,
                ];
                final List<Color> rightbackColors = [
                  backgroundColors[3],
                  backgroundColors[0],
                  backgroundColors[4],
                  backgroundColors[1],
                  backgroundColors[2],
                ];
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('Tapped on ${leftItem['name']}');
                          },
                          child: SizedBox(
                            width: 175,
                            height: 200,
                            child: ProductCard(
                              name: leftItem['name'],
                              image: leftItem['image'],
                              backgroundColor: backgroundColors[
                                  index % backgroundColors.length],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(width: 8),
                    Expanded(
                      child: rightItem != null
                          ? GestureDetector(
                              onTap: () {
                                print('Tapped on ${rightItem['name']}');
                              },
                              child: SizedBox(
                                width: 175,
                                height: 200,
                                child: ProductCard(
                                  name: rightItem['name'],
                                  image: rightItem['image'],
                                  backgroundColor: rightbackColors[
                                      index % rightbackColors.length],
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ) //
                  ],
                );
              },
            ),
          ),
        ],
      ),
    )));
  }
}
