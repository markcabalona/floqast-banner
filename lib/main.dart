import 'package:floqast_banner/constants.dart';
import 'package:floqast_banner/floqast_banner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: kPrimaryColor,
      ),
      home: const FloqastBanner(),
    );
  }
}
