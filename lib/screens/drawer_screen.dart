import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/constantes_globales/Constantes.dart';
import 'package:portfolio/screens/VisiteCard.dart';
import 'PortfolioScreen.dart';


class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Color(colorBackground),
            child: DrawerHeader(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  presentation,
                  style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color(colorBackground),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VisiteCard(),
                        ),
                      );
                    },
                    icon: Icon(Icons.home_outlined,
                        color: Colors.white, size: 30.0),
                    label: Text(
                      "Accueil",
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PortfolioScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.web_asset,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      label: Text(
                        "Portfolio",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
