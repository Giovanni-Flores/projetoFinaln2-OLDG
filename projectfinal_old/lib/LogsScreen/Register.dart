import 'package:flutter/material.dart';
import 'package:projectfinal_old/AuthScreens/auth_check.dart';
import 'package:projectfinal_old/AuthScreens/auth_services.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final formKey = GlobalKey<FormState>();

  //Fill fields to get user data
  final email = TextEditingController();
  final password = TextEditingController();

  //Variable that will make the password visible when clicking a button
  bool visiblePassword = false;

  //State of the variable to register if it hasn't registered yet
  bool loading = false;

  //Register user
  signIn() async {
    setState(() => loading = true);
    try {
      await context.read<AuthService>().signIn(email.text, password.text);
      AlertShow(context);
    } on AuthException catch (e) {
      setState(() => loading = false);
    }
  }

  //Start of registration screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 812,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/registerBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset("images/registerLogo.png"),
                Padding(padding: EdgeInsets.only(bottom: 30.0)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  alignment: Alignment.center,
                  height: 400.0,
                  width: 310.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  //Start of Registration Form
                  //containing 2 String type text fields being E-MAIL and PASSWORD
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        //Start of field from -> E-mail
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                  Icons.mail
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
                              return "Type your E-mail";
                            } else if(!regExp.hasMatch(value)){
                              return "Invalid E-mail";
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
                        //Start of -> Password field
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        SizedBox(height: 8.0),
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
                          validator: (value) {
                            if(value!.isEmpty) {
                              return "Type your password!";
                            } else if(value.length < 6.0) {
                              return "Password must be at least 6 characters!";
                            } return null;
                          },
                          controller: password,
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
                        //Start of -> Register button
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        SizedBox(
                          width: 123.0,
                          height: 38.0,
                          //Confirm Registration Button
                          child: ElevatedButton(
                            onPressed: () {
                              if(formKey.currentState!.validate()) {
                                signIn();
                              } return null;
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              backgroundColor: Color(0xFF73E54B),
                            ),
                            child: Text(
                              "CONFIRM",
                              style: TextStyle(
                                  fontFamily: "Acme",
                                  fontSize: 16,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        //Back button (context)
                        SizedBox(
                          width: 123.0,
                          height: 38.0,
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
                              "COME BACK",
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

  //Alert Show
  AlertShow(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthCheck()));
    },
  );
  //Text that appears in the alert
  AlertDialog alert = AlertDialog(
    title: Text("Registered successfully!"),
    content: Text("Now just enjoy the App! :)"),
    actions: [
      okButton,
    ],
  );
  //Display the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
