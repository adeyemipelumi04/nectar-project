import 'package:flutter/material.dart';

import '../../components/color.dart';
import '../../components/item_card_data.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(36), //
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "lib/assets/images/profile.jpg",
                            fit: BoxFit.cover,
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text("Afsar Hossen",
                                style: TextStyle(
                                  fontFamily: 'Gilroy-Bold',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.black,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.edit_outlined,
                                color: kSplashScreenColor),
                          ],
                        ),
                        const Text("lmshuvo97@gmail.com",
                            style: TextStyle(
                              fontFamily: 'Gilroy-Bold',
                              //fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                child: ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: (profile.length),
                    itemBuilder: (context, index) {
                      final item = profile[index];
                      return ListTile(
                        leading: item['prefixIcon'],
                        title: Text(
                          item['name'],
                          style: const TextStyle(fontSize: 16),
                        ),
                        trailing: item['suffixIcon'],
                      );
                    }),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Material(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xffF2F3F2),
                  child: SizedBox(
                    height: 65,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.logout,
                            color: kSplashScreenColor,
                          ),
                          const SizedBox(width: 20),
                          Text("Log Out",
                              style: TextStyle(
                                fontFamily: 'Gilroy-Bold',
                                // fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: kSplashScreenColor,
                              )),
                          const SizedBox(width: 50),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    ));
  }
}
