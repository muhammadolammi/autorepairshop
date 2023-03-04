// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String buttonText;
  Function func;
  ButtonWidget({
    Key? key,
    required this.buttonText,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: (() {
          func();
        }),
        child: Text(
          buttonText,
        ));
  }
}
