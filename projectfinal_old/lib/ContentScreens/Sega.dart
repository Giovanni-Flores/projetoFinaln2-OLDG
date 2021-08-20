import 'package:flutter/material.dart';

//SEGA Content Screen
class Sega extends StatelessWidget {
  const Sega({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/segaBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset("images/segaLogo.png"),
                Padding(padding: EdgeInsets.only(bottom: 30.0)),
                Container(
                  alignment: Alignment.center,
                  width: 337.0,
                  height: 653.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF010C0D).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                          "       SEGA was registered in 1952 in Tokyo, Japan. Famous for creating arcades, in 1985 the company became popular in the world of consoles by launching the Master System. Just a year later, SEGA introduced the world to the Mega Drive video game, which dominated the European and American market from the protagonist Sonic, the fast-moving hedgehog who starred in classic games like Sonic the Hedgehog.",
                        style: TextStyle(
                            fontFamily: "Acme",
                            fontSize: 16,
                            color: Colors.white
                          ),
                        textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10.0),
                        child: Text(
                            "       After the success of the Mega Drive, SEGA innovated by introducing a console with CDS support, the SEGA CD. Shortly thereafter, the company launched the SEGA Saturn to the market and, in 1988, the DREAMCAST. from manufacturing consoles and began investing in software development, including games for Sony, Nintendo and Microsoft.",
                          style: TextStyle(
                              fontFamily: "Acme",
                              fontSize: 16,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10.0),
                        child: Text(
                            "       To rekindle public interest, in 2017 the company created the SEGA Forever project, relaunching Master System and Mega Drive games for smartphones. Among them are Sonic the Hedgehog, Golden Axe, Comix Zone, Altered Beast and Streets of Rage. Furthermore, SEGA started a program to relaunch the popular consoles of the 1980s and 1990s.",
                          style: TextStyle(
                              fontFamily: "Acme",
                              fontSize: 16,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: SizedBox(
                  width: 143.0,
                  height: 48.0,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        backgroundColor: Color(0xFF000E31),
                        elevation: 15.0,
                    ),
                    child: Text(
                      "COME BACK",
                      style: TextStyle(
                          fontFamily: "Acme",
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
