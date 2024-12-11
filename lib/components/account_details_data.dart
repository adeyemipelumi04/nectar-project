import 'package:flutter/material.dart';

class AccountPageCard extends StatelessWidget {
  final Icon prefixIcon;
  final String name;
  final Icon suffixIcon;

  const AccountPageCard({
    super.key,
    required this.name,
    required this.suffixIcon,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          decoration: const BoxDecoration(
              // color: Colors.white,
              ),
          child: Row(children: [
            prefixIcon,
            // const SizedBox(width: 20),
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Gilroy-Bold',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            suffixIcon,
          ])),
    );
  }
}
