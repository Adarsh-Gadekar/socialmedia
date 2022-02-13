import 'package:flutter/material.dart';
import 'package:vkonnect/constants/Constantcolors.dart';

class LandingHelpers with ChangeNotifier {
  ConstantColors constantColors = ConstantColors();
  Widget bodyImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:  AssetImage("assets/images/login.png"),
        ),
      ),
    );
  }

  Widget taglineText(BuildContext context) {
    return Positioned(
        top: 450.0,
        left: 10.0,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 170.0),
          child: RichText(
            text: TextSpan(
              text: 'V',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: constantColors.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 49.0,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'konnect',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: constantColors.blueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 29.0,
                  ),
                ),
                TextSpan(
                  text: '?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: constantColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 29.0,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
