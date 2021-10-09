import 'package:covid19app/constant.dart';
import 'package:covid19app/screens/home_screen.dart';
import 'package:covid19app/screens/info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid-19 App",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: const TextTheme(bodyText1: TextStyle(color: kBodyTextColor)),
      ),
      home: const HomeScreen(),
    );
  }
}
