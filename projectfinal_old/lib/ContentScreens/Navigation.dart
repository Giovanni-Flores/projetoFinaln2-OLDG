// @dart=2.7
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal_old/AuthScreens/auth_services.dart';
import 'package:projectfinal_old/Quiz/data/categories.dart';
import 'package:projectfinal_old/Quiz/model/category.dart';
import 'package:projectfinal_old/Quiz/widget/category_header_widget.dart';
import 'package:provider/provider.dart';
import 'Sega.dart';
import 'Atari.dart';
import 'Nintendo.dart';

// Content Screen NAVIGATION (option)
class Navigation extends StatelessWidget {
  const Navigation({
    Key key,
    @required this.category,
  }) : super(key: key);

  final Category category;

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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 278.0,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 17.0, top: 116.0),
                      child: Image.asset(
                          "images/pacMan.png", width: 144.0, height: 142.0
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, bottom: 50.0),
                      child: Text(
                        "OLDG",
                        style: TextStyle(
                          color: Color(0xFFFFD702),
                          fontFamily: "Acme",
                          fontSize: 72,
                          shadows: [
                            Shadow(
                              blurRadius: 100.0,
                              color: Color(0xFFFFD702),
                              offset: Offset(10.0, 4.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 398.0,
                width: double.infinity,
                child: Column(
                  children: [
                    //Buttons Container
                    Container(
                      height: 191.0,
                      width: 318.0,
                      alignment: Alignment.center,
                      child: Row(
                        children: [

                          //ATARI button
                          SizedBox(
                            width: 129.0,
                            height: 158.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Atari()));
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                backgroundColor: Color(0xFFF03333),
                                elevation: 15.0,
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
                          Padding(padding: EdgeInsets.only(left: 20.0)),

                          //NINTENDO button
                          SizedBox(
                            width: 165.0,
                            height: 128.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Nintendo())
                                );
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                backgroundColor: Color(0xFFF95DE9),
                                elevation: 15.0,
                              ),
                              child: Text(
                                "NINTENDO",
                                style: TextStyle(
                                    fontFamily: "Acme",
                                    fontSize: 28,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 191.0,
                      width: 318.0,
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          //SEGA button
                          SizedBox(
                            width: 165.0,
                            height: 128.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sega())
                                );
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                backgroundColor: Color(0xFF20A8BB),
                                elevation: 15.0,
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
                          Padding(padding: EdgeInsets.only(left: 20.0)),
                          //QUIZ! button
                          SizedBox(
                            child: Column(
                              children: categories
                                  .map((category) =>
                                  CategoryHeaderWidget(category: category))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //LOG OUT button
              SizedBox(
                width: 105.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () => context.read<AuthService>().logout(),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    backgroundColor: Color(0xFFcfa163),
                    elevation: 15.0,
                  ),
                  child: Text(
                    "LEFT",
                    style: TextStyle(
                        fontFamily: "Acme",
                        fontSize: 32,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Text(
                "© RIGHTS RESERVED TO OLDG COMPANY",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Acme",
                    fontSize: 16
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}