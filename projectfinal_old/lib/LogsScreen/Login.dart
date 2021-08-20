import 'package:flutter/material.dart';
import 'package:projectfinal_old/AuthScreens/auth_services.dart';
import 'package:provider/provider.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>();

  //Fill fields to get user data
  final email = TextEditingController();
  final password = TextEditingController();

  //Check if the user's data match to login the page
  bool loading = false;

  //Variable that will make the password visible when clicking a button
  bool visiblePassword = false;

  //Log in user
  login() async {
    setState(() => loading = true);
    try {
      await context.read<AuthService>().login(email.text, password.text);
    } on AuthException catch (e) {
      setState(() => loading = false);
    }
  }

  //Top of Login Page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 860.0,
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
                Image.asset("images/loginLogo.png"),
                Padding(padding: EdgeInsets.only(bottom: 40.0)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  alignment: Alignment.center,
                  width: 310.0,
                  height: 395.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  //Start of Login Form
                  //containing 2 String type text fields being E-MAIL and PASSWORD
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        //Start of field from -> E-mail
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                  Icons.person
                              ),
                              Padding(padding: EdgeInsets.only(left: 3.0)),
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
                        SizedBox(height: 8.0),
                        //E-mail field and validation
                        TextFormField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regExp = new RegExp(pattern);
                              if(value!.isEmpty) {
                                return "Type your e-mail";
                              } else if(!regExp.hasMatch(value)){
                                return "Invalid e-mail!";
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
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        //Start of -> Password field
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                  Icons.vpn_key
                              ),
                              Padding(padding: EdgeInsets.only(left: 7.0)),
                              Text(
                                "Password:",
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
                        SizedBox(height: 8.0),
                        //Password and validation field
                        TextFormField(
                          controller: password,
                          validator: (value) {
                            if(value!.isEmpty) {
                              return "Inform your password!";
                            } else if(value.length < 6.0) {
                              return "Password must be at least 6 characters!";
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
                              icon: visiblePassword
                                  ? Icon(
                                  Icons.visibility,
                                  color: Colors.white
                              )
                                  : Icon(
                                Icons.visibility_off,
                                color: Colors.white,
                              ),
                              onPressed: () =>
                                  setState(() => visiblePassword = !visiblePassword),
                            ),
                          ),
                          obscureText: !visiblePassword,
                        ),
                        //LOGIN button
                        Padding(padding: EdgeInsets.only(top: 25.0)),
                        SizedBox(
                          width: 123.0,
                          height: 38.0,
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
                              "LOG IN",
                              style: TextStyle(
                                fontFamily: "Acme",
                                fontSize: 16,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        //REGISTER button (create new user)
                        Padding(padding: EdgeInsets.only(top: 15.0)),
                        SizedBox(
                          width: 123.0,
                          height: 38.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              backgroundColor: Color(0xFFF64343),
                            ),
                            child: Text(
                              "REGISTER",
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