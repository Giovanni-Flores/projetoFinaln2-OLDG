import 'package:flutter/material.dart';
import 'package:projectfinal_old/ContentScreens/Navigation.dart';
import 'package:projectfinal_old/LogsScreen/Login.dart';
import 'package:provider/provider.dart';
import 'auth_services.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {

  //Screen that will start the app and decide if you need to register
  // or is already logged into the app

  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.object == null)
      return Login();
    else
      return Navigation();
  }
}