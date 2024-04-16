import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField(
      {super.key,
      required this.password_controller,
      required this.text,
      required this.size});
  final TextEditingController password_controller;
  final String text;
  final double size;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width * widget.size,
      child: TextField(
        maxLines: 1,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye),
            suffixIconColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            labelText: widget.text,
            labelStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Color(0xff66E3FF)),
        controller: widget.password_controller,
      ),
    );
  }
}
