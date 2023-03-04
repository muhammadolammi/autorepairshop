import 'package:autorepairshop/Providers/authprovider.dart';
import 'package:autorepairshop/Widgets/button.dart';
import 'package:autorepairshop/screens/register.dart';
import 'package:autorepairshop/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  static const id = 'homepageroutes';

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final authFunc = ref.watch(authProvider);

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
                      'SIGN IN',
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
                        buttonText: 'Log Out',
                        func: () {
                          authFunc.signOut();
                          Navigator.popAndPushNamed(context, SignInPage.id);
                        })
                  ]))),
    );
  }
}
