import 'dart:async';

import 'package:vkonnect/screens/LandingPage/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:vkonnect/constants/Constantcolors.dart';
import 'package:page_transition/page_transition.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  ConstantColors constantColors = ConstantColors();

  @override
  void initState() {
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: Landingpage(), type: PageTransitionType.leftToRight)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.darkColor,
      body: const Center(),
    );
  }
}
