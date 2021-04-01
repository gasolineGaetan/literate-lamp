import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constantes_globales/Constantes.dart';
import 'package:portfolio/screens/drawer_screen.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mon portfolio",
          style: GoogleFonts.quicksand(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Color(colorBackground),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
          child: SizedBox(
        height: mediaQuery.height,
        width: mediaQuery.width,
        child: Carousel(
          boxFit: BoxFit.fitWidth,
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(seconds: 4),
          dotColor: Color(colorBackground),
          dotSize: 6.0,
          showIndicator: true,
          indicatorBgPadding: 10.0,
          dotBgColor: Colors.blueGrey.withOpacity(0.5),
          dotPosition: DotPosition.bottomCenter,
          autoplayDuration: Duration(seconds: 6),
          dotIncreasedColor: Colors.amber,
          dotIncreaseSize: 2.0,
          images: [
            ExactAssetImage("assets/images/mobileUI01.png"),
            ExactAssetImage("assets/images/mobileUI02.png"),
            ExactAssetImage("assets/images/mobileUI03.png"),
            ExactAssetImage("assets/images/mobileUI04.png"),
            ExactAssetImage("assets/images/mobileUI05.png"),
          ],
        ),
      )),
      drawer: DrawerScreen(),
    );
  }
}
