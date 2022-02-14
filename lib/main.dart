import 'package:vkonnect/constants/Constantcolors.dart';
import 'package:vkonnect/screens/LandingPage/landingHelpers.dart';
import 'package:vkonnect/screens/Splashscreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vkonnect/services/Authentication.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return MultiProvider(
      child: MaterialApp(
        home: Splashscreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Poppins',
            canvasColor: Colors.transparent,
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: constantColors.blueColor)),
      ),
      providers: [
        ChangeNotifierProvider(create: (_) => Authentication()),
        ChangeNotifierProvider(create: (_) => LandingHelpers())
      ],
    );
  }
}
