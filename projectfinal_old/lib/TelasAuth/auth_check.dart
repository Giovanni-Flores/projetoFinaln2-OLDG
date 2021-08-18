import 'package:flutter/material.dart';
import 'package:projectfinal_old/TelasDeConteudo//Opcao.dart';
import 'package:projectfinal_old/TelasAuth/auth_services.dart';
import 'package:provider/provider.dart';
import '../TelasDeLogs/Login.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {

  //Tela que iniciará o app e decidira se necessita de cadastro
  // ou já está logado no app

  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.usuario == null)
      return Login();
    else
      return Opcao();
  }
}