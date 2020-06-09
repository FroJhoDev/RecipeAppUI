import 'package:flutter/material.dart';

import 'package:recipe_app/screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        accentColor: Color.fromRGBO(253, 183, 6, 1),
        fontFamily: 'PTSansCaption'
      ),
      home: HomeScreen(),
    );
  }
}