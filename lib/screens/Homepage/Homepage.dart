import 'package:flutter/material.dart';
import 'package:vkonnect/constants/Constantcolors.dart';

class Hopepage extends StatelessWidget {
  ConstantColors constantColors = ConstantColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.redColor,
    );
  }
}
