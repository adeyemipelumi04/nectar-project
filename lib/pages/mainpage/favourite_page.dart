// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/item_card_data.dart';

import '../../components/color.dart';
import '../../components/item_data.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      const SizedBox(
        height: 30,
      ),
      const Text("Favorite",
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
        height: screenHeight / 1.3,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: (favorites.length),
            itemBuilder: (context, index) {
              final item = favorites[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 140,
                    child: FavoritePageCard(
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
                      //  thickness: 0.5,
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
                  Navigator.pop(context);
                  print("object");
                },
                child: const Center(
                  child: Text("Add All To Cart",
                      style: TextStyle(
                        fontFamily: 'Gilroy-Bold',
                        // fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ))
    ])));
  }
}
