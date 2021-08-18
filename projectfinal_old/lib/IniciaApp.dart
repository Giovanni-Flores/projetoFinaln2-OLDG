import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal_old/TelasAuth/auth_services.dart';
import 'package:projectfinal_old/TelasAuth/auth_check.dart';
import 'package:provider/provider.dart';

//Aqui irá iniciar o Firabase no App

void IniciaApp()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthService())
        ],
        child: VerificaRota(),
      )
  );
}

//Com o firebase iniciado ele irá para a tela AuthCheck
// onde decidirá se a tela a ser carregada será Login ou Conteudo

class VerificaRota extends StatefulWidget {
  const VerificaRota({Key? key}) : super(key: key);

  @override
  _VerificaRotaState createState() => _VerificaRotaState();
}

class _VerificaRotaState extends State<VerificaRota> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthCheck(),
    );
  }
}