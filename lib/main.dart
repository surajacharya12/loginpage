import 'package:flutter/material.dart';
import 'package:medmanage1/screen/logoscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      //home: Onbording(),
      home: Logoscreen(),
    );
  }
}
