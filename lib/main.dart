import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screens/SplashScreen.dart';

void main() => runApp(MonPortfolio());

class MonPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    precacheImage(AssetImage("assets/images/mobileUI01.png"), context);
    precacheImage(AssetImage("assets/images/mobileUI02.png"), context);
    precacheImage(AssetImage("assets/images/mobileUI03.png"), context);
    precacheImage(AssetImage("assets/images/mobileUI04.png"), context);
    precacheImage(AssetImage("assets/images/mobileUI05.png"), context);
    precacheImage(AssetImage("assets/images/logo.png"), context);
    precacheImage(AssetImage("assets/images/gaetan.png"), context);

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff4682B4),
      ),
      title: "Gaëtan BERBIN - Mon Portfolio",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
