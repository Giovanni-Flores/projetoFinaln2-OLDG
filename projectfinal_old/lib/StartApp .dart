import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AuthScreens/auth_check.dart';
import 'AuthScreens/auth_services.dart';

//Here Firabase will start in the App

//StartApp
void StartApp()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthService())
        ],
        child: CheckRoute(),
      )
  );
}

//With firebase started it will go to the AuthCheck screen
// where you will decide whether the screen to load will be Login or Content

class CheckRoute extends StatefulWidget {
  const CheckRoute({Key? key}) : super(key: key);

  @override
  _CheckRouteState createState() => _CheckRouteState();
}

class _CheckRouteState extends State<CheckRoute> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthCheck(),
    );
  }
}