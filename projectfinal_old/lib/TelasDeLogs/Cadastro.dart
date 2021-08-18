import 'package:flutter/material.dart';
import 'package:projectfinal_old/TelasAuth/auth_check.dart';
import 'package:projectfinal_old/TelasAuth/auth_services.dart';
import 'package:provider/provider.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  final formKey = GlobalKey<FormState>();

  //Campos de preenchimento para pegar dados do usuário
  final email = TextEditingController();
  final senha = TextEditingController();

  //Variável que fará a senha ficar visível ao clicar em um botão
  bool senhaVisivel = false;

  //Estatdo da variável para cadastrar caso não tenha registro ainda
  bool carrega = false; //loading para carrega ************

  //Cadastrar usuário
  registrar() async {
    setState(() => carrega = true);
    try {
      await context.read<AuthService>().registrar(email.text, senha.text);
      AlertShow(context);
    } on AuthException catch (e) {
      setState(() => carrega = false);
    }
  }

  ///Início da tela de cadastro
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/cadastroBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 200, left: 32)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                height: 400,
                width: 310,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                ///Início do Formulário de Cadastro
                ///contendo 2 campos de texto tipo String sendo E-MAIl e SENHA
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      ///Início do campo de -> E-mail
                      Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                                Icons.mail
                            ),
                            Padding(padding: EdgeInsets.only(left: 3)),
                            Text(
                              "E-mail:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Acme",
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      ///Campo do E-mail e validação
                      TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                          RegExp regExp = new RegExp(pattern);
                          if(value!.isEmpty) {
                            return "Dígite seu E-mail:";
                          } else if(!regExp.hasMatch(value)){
                            return "Email inválido";
                          } return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF42FF00),
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFF989898),
                        ),
                      ),
                      ///Início do campo de -> Senha
                      Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(height: 8),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                                Icons.vpn_key
                            ),
                            Padding(padding: EdgeInsets.only(left: 7)),
                            Text(
                              "Senha:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Acme",
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      ///Campo de Senha e validação
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty) {
                            return "Dígite sua senha!";
                          } else if(value.length < 6) {
                            return "Senha deve ter no mínimo 6 caracteres!";
                          } return null;
                        },
                        controller: senha,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF42FF00),
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFF989898),
                          suffixIcon: IconButton(
                            icon: senhaVisivel
                                ? Icon(
                                Icons.visibility,
                                color: Colors.white
                            )
                                : Icon(
                              Icons.visibility_off,
                              color: Colors.white,
                            ),
                            onPressed: () =>
                                setState(() => senhaVisivel = !senhaVisivel),
                          ),
                        ),
                        obscureText: !senhaVisivel,
                      ),
                      ///Início do botão de -> Cadastrar
                      Padding(padding: EdgeInsets.only(top: 20)),
                      SizedBox(
                        width: 123,
                        height: 38,
                        ///Botão para Confirmar Cadastro
                        child: ElevatedButton(
                          onPressed: () {
                            if(formKey.currentState!.validate()) {
                                registrar();
                            } return null;
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            backgroundColor: Color(0xFF73E54B),
                          ),
                          child: Text(
                            "CONFIRMAR",
                            style: TextStyle(
                              fontFamily: "Acme",
                              fontSize: 16,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      ///Botão para Voltar (context)
                      SizedBox(
                        width: 123,
                        height: 38,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            backgroundColor: Color(0xFFF64343),
                          ),
                          child: Text(
                            "VOLTAR",
                            style: TextStyle(
                                fontFamily: "Acme",
                                fontSize: 16,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
        ),

      ),
    );
  }
}

  ///Alert Show
  AlertShow(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthCheck()));
    },
  );
  // Texto que aparecerá no alert
  AlertDialog alerta = AlertDialog(
    title: Text("Cadastrado com sucesso!"),
    content: Text("Agora é só aproveitar o App! :)"),
    actions: [
      okButton,
    ],
  );
  // Exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
