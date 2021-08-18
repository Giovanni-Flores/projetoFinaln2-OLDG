import 'dart:async';
import 'package:flutter/material.dart';
import 'IniciaApp.dart';

//Tela inicial cuja função é apenas carregar o app
// e logo após direcionar para outra tela onde o Firebase será inicializado

void main() => runApp(MaterialApp(
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
      IniciaApp();
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



