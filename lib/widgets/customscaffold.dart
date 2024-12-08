import 'package:flutter/material.dart';

class Customscaffold extends StatelessWidget {
  const Customscaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Center(
              child: child ?? const Text('No content provided'),
            ),
          ),
        ],
      ),
    );
  }
}
