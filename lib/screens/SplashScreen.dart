import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constantes_globales/Constantes.dart';
import 'package:portfolio/screens/VisiteCard.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorBackground),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),
          SizedBox(height: 60.0),
          Center(
            child: Text(
              "Gaëtan BERBIN\n Concepteur & Developpeur \n Flutter",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  wordSpacing: 2.0),
            ),
          ),
          SizedBox(height: 80.0),
          Flexible(
            child: TextButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VisiteCard(),
                  ),
                );
              },
              icon: Icon(
                FontAwesomeIcons.signInAlt,
                color: Colors.amber,
                size: 35.0,
              ),
              label: Text(
                "Par ici la visite",
                style: GoogleFonts.quicksand(
                    fontSize: 22.0,
                    color: Colors.amber,
                    fontWeight: FontWeight.w800,
                    wordSpacing: 1.0),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
