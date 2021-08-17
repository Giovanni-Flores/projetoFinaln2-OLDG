import 'package:flutter/material.dart';
import 'dart:async';
import 'Option.dart';
void main()  => runApp(MaterialApp (
  home: HomeScreen(),
  ));


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds:3),(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context)=>Option(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Image.asset("images/booh.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
