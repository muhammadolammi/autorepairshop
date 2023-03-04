// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextFieldDetails {
  final String email;
  final String password;
  final String password1;
  TextFieldDetails({
    required this.email,
    required this.password,
    required this.password1,
  });

  TextFieldDetails copyWith({
    String? email,
    String? password,
    String? password1,
  }) {
    return TextFieldDetails(
      email: email ?? this.email,
      password: password ?? this.password,
      password1: password1 ?? this.password1,
    );
  }
}

class TextFieldDetailsNotifier extends StateNotifier<TextFieldDetails> {
  TextFieldDetailsNotifier()
      : super(TextFieldDetails(email: '', password1: '', password: ''));

  void getEmail(String em) {
    state = state.copyWith(email: em);
  }

  void getPass(String pass) {
    state = state.copyWith(password: pass);
  }
}
