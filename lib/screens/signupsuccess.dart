import 'package:autorepairshop/Widgets/button.dart';
import 'package:autorepairshop/screens/sign_in.dart';
import 'package:flutter/material.dart';

class SignUpSucess extends StatefulWidget {
  const SignUpSucess({super.key});
  static const id = 'signinroutes';

  @override
  State<SignUpSucess> createState() => _SignUpSucessState();
}

class _SignUpSucessState extends State<SignUpSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE3F4E7),
      body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                      child: Icon(
                        Icons.check,
                        size: 150,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'Successful',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonWidget(
                        buttonText: 'Login',
                        func: () {
                          Navigator.pushNamed(context, SignInPage.id);
                        })
                  ]))),
    );
  }
}
