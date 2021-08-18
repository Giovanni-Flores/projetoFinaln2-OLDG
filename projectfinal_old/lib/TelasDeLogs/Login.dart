import 'package:flutter/material.dart';
import 'package:projectfinal_old/TelasAuth/auth_services.dart';
import 'package:provider/provider.dart';
import 'Cadastro.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>();

  //Campos de preenchimento para pegar dados do usuário
  final email = TextEditingController();
  final senha = TextEditingController();

  //Verifica se os dados do usuário conferem para fazer o login da página
  bool carrega = false;

  //Variável que fará a senha ficar visível ao clicar em um botão
  bool senhaVisivel = false;

  //Logar o usuário
  login() async {
    setState(() => carrega = true);
    try {
      await context.read<AuthService>().login(email.text, senha.text);
    } on AuthException catch (e) {
      setState(() => carrega = false);
    }
  }

  ///Início da Página de Login
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 860,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/loginBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 261, left: 32)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  width: 310,
                  height: 395,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  ///Início do Formulário de Login
                  ///contendo 2 campos de texto tipo String sendo E-MAIl e SENHA
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        ///Início do campo de -> E-mail
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                  Icons.person
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
                                return "Dígite seu email";
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
                        Padding(padding: EdgeInsets.only(top: 20)),
                        ///Início do campo de -> Senha
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
                          controller: senha,
                          validator: (value) {
                            if(value!.isEmpty) {
                              return "Informe sua senha!";
                            } else if(value.length < 6) {
                              return "Senha deve ter no mínimo 6 caracteres!";
                            } return null;
                          },
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
                        ///Botão para ENTRAR (logar)
                        Padding(padding: EdgeInsets.only(top: 25)),
                        SizedBox(
                          width: 123,
                          height: 38,
                          child: ElevatedButton(
                            onPressed: () {
                              if(formKey.currentState!.validate()) {
                                  login();
                                } return null;
                              },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              backgroundColor: Color(0xFF73E54B),
                            ),
                            child: Text(
                              "ENTRAR",
                              style: TextStyle(
                                fontFamily: "Acme",
                                fontSize: 16,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        ///Botão para CADASTRAR (criar novo usuário)
                        Padding(padding: EdgeInsets.only(top: 15)),
                        SizedBox(
                          width: 123,
                          height: 38,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cadastro()),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              backgroundColor: Color(0xFFF64343),
                            ),
                            child: Text(
                              "CADASTRAR",
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
      ),
    );
  }
}