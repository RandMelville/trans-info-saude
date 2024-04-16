import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField(
      {super.key, required this.email_controller, required this.size});
  final TextEditingController email_controller;
  final double size;

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width * widget.size,
      child: TextField(
        maxLines: 1,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            labelText: "E-mail",
            labelStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Color(0xff66E3FF)),
        controller: widget.email_controller,
      ),
    );
  }
}
