import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medmanage1/widgets/customscaffold.dart';

class Onbording2 extends StatefulWidget {
  const Onbording2({super.key});

  @override
  State<Onbording2> createState() => _Onbording2State();
}

class _Onbording2State extends State<Onbording2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 2, 42, 75),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage("assets/doctor2.png"),
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Find a lot of specialist\ndoctors in one place",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 240, 107, 19),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
