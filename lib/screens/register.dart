import 'package:autorepairshop/Providers/authprovider.dart';
import 'package:autorepairshop/Providers/textfieldprovider.dart';
import 'package:autorepairshop/Widgets/button.dart';
import 'package:autorepairshop/Widgets/textfield.dart';
import 'package:autorepairshop/const.dart';
import 'package:autorepairshop/screens/sign_in.dart';
import 'package:autorepairshop/screens/signupsuccess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});
  static const id = 'registerPageRoute';

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
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
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome !',
                style: kpageTitleStyle,
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                obsruct: false,
                icon: Icon(Icons.email_outlined,
                    color: Colors.blue.shade700, size: 24),
                keyboard: TextInputType.emailAddress,
                border: ksrTextFieldBorders,
                label: 'Email',
                controller: _email,
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                obsruct: true,
                icon: Icon(CupertinoIcons.lock_circle,
                    color: Colors.blue.shade700, size: 24),
                keyboard: TextInputType.text,
                border: ksrTextFieldBorders,
                label: 'Password',
                controller: _password,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              ButtonWidget(
                buttonText: 'Register',
                func: () {
                  if (loginStatus.hasValue != false) {
                    authFunc.register(_email.text, _password.text, context);
                    authFunc.verifyMail();
                    Navigator.pushNamed(context, SignUpSucess.id);
                  }

                  print(_email.text);
                  print(_password.text);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " Already have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                buttonText: 'Login',
                func: () {
                  Navigator.pushNamed(
                    context,
                    SignInPage.id,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
