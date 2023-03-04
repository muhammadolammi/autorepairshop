import 'package:autorepairshop/Features/textfieldclass.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textFieldProvider =
    StateNotifierProvider<TextFieldDetailsNotifier, TextFieldDetails>(
  (ref) {
    return TextFieldDetailsNotifier();
  },
);
