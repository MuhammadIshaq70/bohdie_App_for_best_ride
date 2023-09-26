import 'dart:async';

import 'package:flutter/material.dart';

import '../selection/selectionScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SelectionScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.amber,
            image:
                DecorationImage(image: AssetImage('assets/icons/bohdie.png')),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff12C6EE),
                Color(0xff5E18BE),
              ],
            )),
      ),
    );
  }
}
