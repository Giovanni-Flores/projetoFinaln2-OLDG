import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? object;
  bool isLoading = true;

  AuthService() {
    _authCheck();
  }

  //Check if the user is already logged into the app
  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      object = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  //Get registration data
  _getUser() {
    object = _auth.currentUser;
    notifyListeners();
  }

  //Register the user (Register Screen)
  signIn(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        throw AuthException("Password is too weak!");
      } else if (e.code == "email-already-in-use") {
        throw AuthException("This e-mail is already registered");
      }
    }
  }

  //Log the user into the app (Login screen)
  login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        throw AuthException("Email not found. Register.");
      } else if (e.code == "wrong-password") {
        throw AuthException("Incorrect password. Try again");
      }
    }
  }

  //Exit the app (remove already logged data)
  logout() async {
    await _auth.signOut();
    _getUser();
  }
}
