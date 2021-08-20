import 'package:flutter/material.dart';

//ATARI Content Screen
class Atari extends StatelessWidget {
  const Atari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/atariBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset("images/atariLogo.png"),
                  Padding(padding: EdgeInsets.only(bottom: 40.0)),
                  Container(
                    alignment: Alignment.center,
                    width: 337.0,
                    height: 753.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D0707).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0, right: 10.0),
                          child: Text(
                            "       In 1972, the company made its name in history as one of the industry's pioneers. That's because it helped popularize home games on a global scale. First with the launch of Pong and arcades, and later with the Video Computar System, the company can be considered the matriarch of the gaming world.",
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
                            "       First, a duo named the company Syzygy and focused on fixing pinball machines. However, in 1971, they created their first game: Compute Space. The machine was one of the first commercial arcades in history, but it stood out for other innovations. them, the ability to reproduce functions without the help of a computer and with a simple screen. ",
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
                              "       In 1976, Nolan Bushnell decided it was time to fulfill a personal dream with the company. The founder wanted to create a console capable of running all the games released by the company. For that, then, he had to sell everything to Warner. that the sale was around 30 million dollars.",
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
                            "       As the company grew, the atmosphere was one of freedom and celebration in the offices. Engineers had frequent parties, walked barefoot, and used drugs while working. So, in 1978, the situation became untenable for Bushnell. Like Dabney, he left the company. company. Despite that, he returned to work as a consultant in 2010.",
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
                              backgroundColor: Color(0xFFC81515),
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
