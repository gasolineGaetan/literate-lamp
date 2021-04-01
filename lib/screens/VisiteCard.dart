import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constantes_globales/Constantes.dart';
import 'package:portfolio/screens/SplashScreen.dart';
import 'package:portfolio/screens/drawer_screen.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class VisiteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(colorBackground),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            nomBusinessCard,
            style: GoogleFonts.quicksand(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashScreen(),
                    ),
                  );
                },
                label: Text(
                  "Sortir",
                  style: GoogleFonts.quicksand(
                      fontSize: 12.0,
                      letterSpacing: 0.5,
                      color: Colors.amber,
                      fontWeight: FontWeight.w800),
                ),
                icon: Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: Colors.amber,
                  size: 25.0,
                ),
              ),
            ),
          ],
        ),
        drawer: DrawerScreen(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.white70,
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage("assets/images/gaetan.png"),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  color: Color(colorBackground),
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                  borderOnForeground: false,
                  child: Text(
                    description,
                    style: GoogleFonts.openSans(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 0.5,
                        wordSpacing: 2.0),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Card(
                  elevation: 0.0,
                  color: Color(colorBackground),
                  margin:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  borderOnForeground: false,
                  child: Text(
                    invitation,
                    style: GoogleFonts.openSans(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 0.5,
                      wordSpacing: 2.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FabCircularMenu(
          ringDiameter: 210.0,
          ringWidth: 56.0,
          ringColor: Colors.white70,
          fabOpenColor: Colors.white70,
          fabElevation: 10.0,
          fabCloseIcon: Icon(
            FontAwesomeIcons.userCheck,
            size: 30.0,
            color: Color(colorBackground),
          ),
          fabOpenIcon: Icon(FontAwesomeIcons.handshake,
              size: 30.0, color: Color(colorBackground)),
          fabColor: Colors.white70,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.linkedin,
                  color: Color(colorBackground),
                  size: 30.0,
                ),
                onPressed: () => _launchURL(url)),
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.phoneVolume,
                  color: Color(colorBackground),
                  size: 30.0,
                ),
                onPressed: () => _launchURL(num)),
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.sms,
                  color: Color(colorBackground),
                  size: 30.0,
                ),
                onPressed: () => _launchURL(sms)),
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.at,
                  color: Color(colorBackground),
                  size: 30.0,
                ),
                onPressed: () => _launchURL(mailto)),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
    throw "Erreur de connection";
  }
}
