import 'package:autorepairshop/Features/authstatus.dart';
import 'package:autorepairshop/const.dart';
import 'package:autorepairshop/firebase_options.dart';
import 'package:autorepairshop/screens/errorpage.dart';
import 'package:autorepairshop/screens/homepage.dart';
import 'package:autorepairshop/screens/loadingPage.dart';
import 'package:autorepairshop/screens/register.dart';
import 'package:autorepairshop/screens/setnewpassword.dart';
import 'package:autorepairshop/screens/sign_in.dart';
import 'package:autorepairshop/screens/signupsuccess.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
      routes: {
        RegisterPage.id: (context) => const RegisterPage(),
        HomePage.id: (context) => const HomePage(),
        SignUpSucess.id: (context) => const SignUpSucess(),

        // SetNewPasswordPage.id: (context) => const SetNewPasswordPage(),
        SignInPage.id: (context) => const SignInPage(),
      },
    ),
  ));
}
