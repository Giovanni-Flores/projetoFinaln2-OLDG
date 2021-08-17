import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Sega.dart';
import 'Atari.dart';
import 'Nintendo.dart';

class Option extends StatelessWidget {
  const Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/marioBackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 278,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17, top: 116),
                    child: Image.asset(
                        "images/pacMan.png", width: 144, height: 142
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 50),
                    child: Text(
                      'OLDG',
                      style: TextStyle(
                        color: Color(0xFFFFD702),
                        fontFamily: "Acme",
                        fontSize: 72,
                        shadows: [
                          Shadow(
                            blurRadius: 100,
                            color: Color(0xFFFFD702),
                            offset: Offset(10, 4.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 398,
              width: double.infinity,
              child: Column(
                children: [
                  ///buttons container
                  Container(
                    height: 191,
                    width: 318,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        ///ATARI
                        SizedBox(
                          width: 129.0,
                          height: 128.0,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Atari()));
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                backgroundColor: Color(0xFFF03333),
                                elevation: 15,
                            ),
                            child: Text(
                              "ATARI",
                              style: TextStyle(
                                  fontFamily: "Acme",
                                  fontSize: 32,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 60)),
                        ///NINTENDO
                        SizedBox(
                          width: 129.0,
                          height: 128.0,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Nintendo())
                              );
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                backgroundColor: Color(0xFFF95DE9),
                                elevation: 15,
                            ),
                            child: Text(
                              "NINTENDO",
                              style: TextStyle(
                                  fontFamily: "Acme",
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 191,
                    width: 318,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        ///SEGA
                        SizedBox(
                          width: 129.0,
                          height: 128.0,
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Sega())
                              );
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                backgroundColor: Color(0xFF20A8BB),
                                elevation: 15,
                            ),
                            child: Text(
                              "SEGA",
                              style: TextStyle(
                                  fontFamily: "Acme",
                                  fontSize: 32,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 50)),
                        ///QUIZ!
                        SizedBox(
                          width: 129.0,
                          height: 128.0,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                backgroundColor: Color(0xFFFFC700),
                                elevation: 15,
                            ),
                            child: Text(
                              "Quiz!",
                              style: TextStyle(
                                  fontFamily: "Acme",
                                  fontSize: 36,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text(
              "© DIREITOS RESERVADOS A EMPRESA OLDG ",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Acme",
                  fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }
}
