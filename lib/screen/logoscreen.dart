import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medmanage1/screen/onbording.dart';

class Logoscreen extends StatefulWidget {
  const Logoscreen({super.key});

  @override
  State<Logoscreen> createState() => _LogoscreenState();
}

class _LogoscreenState extends State<Logoscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return Onbording();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 224, 185),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
