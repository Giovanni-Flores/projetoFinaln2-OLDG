import 'package:flutter/material.dart';

//NINTENDO Content Screen
class Nintendo extends StatelessWidget {
  const Nintendo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/nintendoBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset("images/nintendoLogo.png"),
                Padding(padding: EdgeInsets.only(bottom: 30.0)),
                Container(
                  alignment: Alignment.center,
                  width: 337.0,
                  height: 553.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF664506).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0, right: 10.0),
                        child: Text(
                            "       Nintendo was founded on September 23, 1889 by Fusajiro Yamauchi in Kyoto, Japan, as the manufacturer of a card game called Hanafuda. In 1969, the company's heir, Hiroshi Yamauchi, decided to expand Nintendo's field of action. , introducing her to the gaming business.",
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
                          "       In the 1970s, Nintendo officially entered the gaming market, but it was only in the 1980s that the company headed by Yamauchi consolidated itself in the sector, after its arrival in the United States.",
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
                            "       Specialized in the development of consoles and electronic games, Nintendo stood out for the success of video games such as NES (Nintendo Entertainment System), Super Nintendo, Nintendo 64, Nintendo Wii, 3DS, among others. In addition to the devices, Nintendo was also responsible for creation of classic games like 'Donkey Kong', 'Super Mario Bros' and 'Zelda'.",
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
                            backgroundColor: Color(0xFFC33B00),
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
