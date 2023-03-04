import 'dart:math';

import 'package:autorepairshop/Providers/authprovider.dart';
import 'package:autorepairshop/screens/errorpage.dart';
import 'package:autorepairshop/screens/homepage.dart';
import 'package:autorepairshop/screens/loadingPage.dart';
import 'package:autorepairshop/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthStatus extends ConsumerWidget {
  const AuthStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStatus = ref.read(authStatusProvider);
    return authStatus.when(
      data: (data) {
        if (data == null) {
          return HomePage();
        } else {
          return SignInPage();
        }
      },
      error: (error, stackTrace) {
        return ErrorScreen(e, stackTrace);
      },
      loading: () => LoadingPage(),
    );
  }
}
