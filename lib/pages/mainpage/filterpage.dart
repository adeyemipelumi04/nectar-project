// import 'package:flutter/cupertino.dart';
// ignore_for_file: avoid_print, unused_element

import 'package:flutter/material.dart';
import 'package:nectar/components/item_card_data.dart';

import '../../components/color.dart';
// import '../../components/item_data.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
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
                        const Text("Filters",
                            style: TextStyle(
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          height: 5,
                        )
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                ]))));
  }

  void _openFilterDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        final screenHeight = MediaQuery.of(context).size.height;

        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            color: Colors.grey[200],
          ),
          height: screenHeight / 1.2,
          child: Padding(
            padding: EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: StatefulBuilder(
              builder: (context, setModalState) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: categoriesfilters.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Row(
                            children: [
                              Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  value: categoriesfilters[index]['isChecked'],
                                  onChanged: (value) {
                                    setModalState(() {
                                      categoriesfilters[index]['isChecked'] =
                                          value!;
                                    });
                                    setState(() {});
                                  },
                                  fillColor:
                                      WidgetStateProperty.resolveWith<Color>(
                                    (states) {
                                      if (states
                                          .contains(WidgetState.selected)) {
                                        return Colors.green;
                                      }
                                      return Colors.white;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  categoriesfilters[index]['label'],
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Brand',
                      style: TextStyle(
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: brandfilters.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Row(
                              children: [
                                Transform.scale(
                                  scale: 1.5,
                                  child: Checkbox(
                                    value: brandfilters[index]['isChecked'],
                                    onChanged: (value) {
                                      setModalState(() {
                                        brandfilters[index]['isChecked'] =
                                            value!;
                                      });
                                      setState(() {});
                                    },
                                    fillColor: WidgetStateProperty
                                        .resolveWith<Color>(
                                      (states) {
                                        if (states
                                            .contains(WidgetState.selected)) {
                                          return Colors.green;
                                        }
                                        return Colors.grey.shade300;
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    brandfilters[index]['label'],
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
                            Navigator.pop(context);
                            print("object");
                          },
                          child: const Center(
                            child: Text("Apply Filter",
                                style: TextStyle(
                                  fontFamily: 'Gilroy-Bold',
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
                );
              },
            ),
          ),
        );
      },
    );
  }
}
