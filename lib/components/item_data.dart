// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:nectar/components/color.dart';

// import 'item_card_data.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final String details;
  final double price;
  final String image;

  const ItemCard({
    super.key,
    required this.name,
    required this.details,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Item Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 95,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            // Item Name and Details
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              details,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            // Price and Add Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kSplashScreenColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kSplashScreenColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {
                      print('Added $name to cart');
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageNameCard extends StatelessWidget {
  final String name;
  final String image;
  final Color backgroundColor;

  const ImageNameCard({
    super.key,
    required this.name,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
      elevation: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String image;
  final Color backgroundColor;

  const ProductCard({
    super.key,
    required this.name,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color borderColor = darkenColor(backgroundColor, 0.2);
    return Card(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor, width: 2),
        borderRadius: BorderRadius.circular(12), // Border radius
      ),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Gilroy-Bold',
              // fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

Color darkenColor(Color color, double amount) {
  assert(amount >= 0 && amount <= 1);
  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
  return hslDark.toColor();
}

class CartPageCard extends StatelessWidget {
  final String name;
  final String details;
  final double price;
  final String image;
  // final double itemCount;

  const CartPageCard({
    super.key,
    required this.name,
    required this.details,
    required this.price,
    required this.image,
    // required this.itemCount
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 0,
        child: Container(
          height: 150,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.white,
            //  borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Image.asset(
                image,
                height: 100,
                width: 100,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    details,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: const Border(
                              top: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              left: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.remove,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "1",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: const Border(
                              top: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              bottom: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              right: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                              left: BorderSide(
                                  width: 0.5,
                                  color: Colors.grey,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add,
                                    size: 16, color: kSplashScreenColor)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Remove item');
                      },
                      child: const Icon(
                        Icons.close_outlined,
                        size: 32,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Gilroy-Bold',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritePageCard extends StatelessWidget {
  final String name;
  final String details;
  final double price;
  final String image;
  // final double itemCount;

  const FavoritePageCard({
    super.key,
    required this.name,
    required this.details,
    required this.price,
    required this.image,
    // required this.itemCount
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 120,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: const BoxDecoration(
            // color: Colors.white,
            ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 80,
              width: 70,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'Gilroy-Bold',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  details,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'Gilroy-Bold',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Go to order details');
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
