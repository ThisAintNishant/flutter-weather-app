import 'package:flutter/material.dart';
import '../constants.dart' as constant;
import '../constants.dart' as constant2;

class textfield extends StatelessWidget {
  final String text;
  final bool isPassword;
  final Function(String) onChanged;

  const textfield({
    super.key,
    required this.text,
    required this.isPassword,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(
          color:  constant2.textColor2,
        ),
        obscureText: isPassword,
        decoration: InputDecoration
          (
            hintText: text,
            hintStyle: TextStyle(
              color: constant2.textColor2,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
            enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(
                  color: constant2.textColor2,
                  width: 2,
                )
            )
        ),
      ),
    );
  }
}