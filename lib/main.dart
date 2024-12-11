import 'package:nectar/core.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Gilroy',
          checkboxTheme: CheckboxThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6), // Rounded corners
            ),
            fillColor: WidgetStateProperty.resolveWith<Color>(
              (states) {
                if (states.contains(WidgetState.selected)) {
                  return kSplashScreenColor; // Green when selected
                }
                return Colors.grey[300]!; // Grey when not selected
              },
            ),
            checkColor: WidgetStateProperty.all(Colors.white), // White tick
            side: BorderSide(
                color: Colors.grey[600]!, width: 1.5), // Border color
          ),
        ),
        // ignore: prefer_const_constructors
        home: SignInPage());
  }
}
