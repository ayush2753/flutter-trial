import 'package:flutter/material.dart';
import 'package:swiftassign/screens/LoginScreen.dart';
import 'package:swiftassign/screens/iPhone%2014%20Pro%20Max%20-%202.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: /*LoginScreen()*/
          Subscreen()

      )
    );
  }
}
