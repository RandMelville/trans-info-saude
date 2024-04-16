import 'package:flutter/material.dart';

class NameTextField extends StatefulWidget {
  const NameTextField(
      {super.key,
      required this.name_controller,
      required this.color,
      required this.text,
      required this.size});
  final TextEditingController name_controller;
  final Color color;
  final String text;
  final double size;

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
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
              labelText: widget.text,
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              filled: true,
              fillColor: widget.color),
          controller: widget.name_controller,
        ));
  }
}
