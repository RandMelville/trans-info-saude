import 'package:flutter/material.dart';

class CustomElevatedButtom extends StatefulWidget {
  const CustomElevatedButtom(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.size,
      required this.text_color});

  final void Function() onPressed;
  final Color color;
  final double size;
  final String text;
  final Color text_color;

  @override
  State<CustomElevatedButtom> createState() => _CustomElevatedButtomState();
}

class _CustomElevatedButtomState extends State<CustomElevatedButtom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(color: widget.text_color),
      ),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: widget.color,
          padding: EdgeInsets.symmetric(vertical: 10),
          minimumSize:
              Size(MediaQuery.of(context).size.width * widget.size, 0)),
    );
  }
}
