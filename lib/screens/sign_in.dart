import 'package:autorepairshop/Providers/authprovider.dart';
import 'package:autorepairshop/Providers/textfieldprovider.dart';
import 'package:autorepairshop/Widgets/button.dart';
import 'package:autorepairshop/Widgets/textfield.dart';
import 'package:autorepairshop/const.dart';
import 'package:autorepairshop/screens/homepage.dart';
import 'package:autorepairshop/screens/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerStatefulWidget {
  static const id = 'signInPageRoute';

  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authFunc = ref.watch(authProvider);
    final userStatus = ref.watch(userStatusProvider);
    final loginStatus = ref.watch(authStatusProvider);

    return Scaffold(
      backgroundColor: Color(0XFFE3F4E7),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back!',
                style: kpageTitleStyle,
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                keyboard: TextInputType.emailAddress,
                border: ksrTextFieldBorders,
                label: 'Email',
                controller: _email,
                icon: Icon(Icons.email_outlined,
                    color: Colors.blue.shade700, size: 24),
                obsruct: false,
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                keyboard: TextInputType.text,
                border: ksrTextFieldBorders,
                label: 'Password',
                controller: _password,
                icon: Icon(CupertinoIcons.lock_circle,
                    color: Colors.blue.shade700, size: 24),
                obsruct: true,
              ),
              SizedBox(
                height: 30,
              ),
              ButtonWidget(
                buttonText: 'Login',
                func: () {
                  authFunc.login(_email.text, _password.text, context);
                  Navigator.pushNamed(context, HomePage.id);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (() {
                    authFunc.resetPass();
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ButtonWidget(
                buttonText: 'Sign Up',
                func: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
