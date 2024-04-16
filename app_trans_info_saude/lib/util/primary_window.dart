import 'package:flutter/material.dart';

class PrimaryWindow extends StatefulWidget {
  const PrimaryWindow(
      {super.key, required this.components, required this.sized_box_heigth});

  final List<Widget> components;
  final double sized_box_heigth;

  @override
  State<PrimaryWindow> createState() => _PrimaryWindowState();
}

class _PrimaryWindowState extends State<PrimaryWindow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MyTransHealthGuide",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "lib/assets/images/Logo.png",
                  height: 200,
                ),
                SizedBox(
                  height: widget.sized_box_heigth,
                ),
                ...widget.components,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
