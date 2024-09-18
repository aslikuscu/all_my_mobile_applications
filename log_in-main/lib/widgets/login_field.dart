import 'package:flutter/material.dart';
import 'package:log_in/palette.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(27),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Pallete.borderColor, width: 3),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Pallete.gradient2, width: 3),
                borderRadius: BorderRadius.circular(10)),
            hintText: hintText),
      ),
    );
  }
}
