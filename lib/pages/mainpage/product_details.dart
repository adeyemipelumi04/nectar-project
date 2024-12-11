// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, product, required this.productdetails});
  final List<Map<String, dynamic>> productdetails;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isProductDetailsExpanded = false;

  bool isReviewExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Icon(Icons.drive_folder_upload_outlined),
                  ],
                ),
                // Product Image
                Image.asset(
                  widget.productdetails[5]['image'],
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                // Product Name and Weight
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                widget.productdetails[0]['name'],
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                widget.productdetails[1]['details'],
                                style:
                                    const TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          const Icon(Icons.favorite_border_outlined)
                        ],
                      ),
                      const Row(
                        children: [],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Product Detail',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: Icon(isProductDetailsExpanded
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_right),
                            onPressed: () {
                              setState(() {
                                isProductDetailsExpanded =
                                    !isProductDetailsExpanded;
                              });
                            },
                          ),
                        ],
                      ),
                      if (isProductDetailsExpanded)
                        Text(
                          widget.productdetails[2]['products'],
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[800]),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Reviews',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: Icon(isReviewExpanded
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_right),
                            onPressed: () {
                              setState(() {
                                isReviewExpanded = !isReviewExpanded;
                              });
                            },
                          ),
                        ],
                      ),
                      if (isReviewExpanded)
                        Column(
                          children: [
                            Text(
                              'Review 1: Great product! Totally worth the price.',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[800]),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Review 2: It works perfectly for my needs.',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      const SizedBox(height: 16),
                      // Rating Stars
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
