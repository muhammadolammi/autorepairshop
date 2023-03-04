// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:autorepairshop/Providers/textfieldprovider.dart';

class TextFieldWidget extends StatefulWidget {
  String label;
  InputBorder border;
  TextEditingController controller;
  TextInputType keyboard;
  Icon icon;
  bool obsruct;
  Function? validtor;

  TextFieldWidget({
    Key? key,
    required this.label,
    required this.border,
    required this.controller,
    required this.keyboard,
    required this.icon,
    required this.obsruct,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => widget.validtor!(value),
      obscureText: widget.obsruct,
      controller: widget.controller,
      decoration: InputDecoration(
        icon: widget.icon,
        fillColor: Colors.white,
        filled: true,
        label: Text(
          widget.label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        border: widget.border,
      ),
    );
  }
}
