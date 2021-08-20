// @dart=2.7
import 'dart:async';
import 'package:flutter/material.dart';
import 'StartApp .dart';

//Initial screen whose function is to just load the app
// and right after directing to another screen where Firebase will be started

void main() => runApp(
  MaterialApp(
    home: HomeScreen(),
  ),
);

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds:3),(){
      StartApp();
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/booh.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}