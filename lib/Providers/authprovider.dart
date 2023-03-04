import 'package:autorepairshop/model/authmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = Provider<Authentication>(
  (ref) => Authentication(),
);

final authStatusProvider = StreamProvider<User?>(
  (ref) => ref.watch(authProvider).authStateChange,
);

final userStatusProvider = StateProvider<User?>(
  (ref) => ref.watch(authProvider).user,
);
