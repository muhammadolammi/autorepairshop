import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?> get authStateChange => _auth.authStateChanges();
  User? get user => _auth.currentUser;

  Future<void> register(
      String email, String password, BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                  title: Text('Error Occured'),
                  content: Text(e.toString()),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text("OK"))
                  ]));
    } catch (e) {
      if (e == 'email-already-in-use') {
        print("Email-already-in-use");
      } else {
        print('Erro: $e');
      }
    }
  }

  Future<void> login(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                  title: Text('Error Occured'),
                  content: Text(e.toString()),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text("OK"))
                  ]));
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> verifyMail() async {
    final user = _auth.currentUser;
    if (user?.emailVerified != true) {
      await user?.sendEmailVerification();
    }
  }

  Future<void> resetPass() async {
    final user = _auth.currentUser;
    if (user != null) {
      String email = user.email!;
      _auth.sendPasswordResetEmail(email: email);
    }
  }
}
