import 'package:flutter/material.dart';

class PrimaryUserPage extends StatefulWidget {
  const PrimaryUserPage({super.key, required this.fields});
  final List<Widget> fields;

  @override
  State<PrimaryUserPage> createState() => _PrimaryUserPageState();
}

class _PrimaryUserPageState extends State<PrimaryUserPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ...widget.fields,
          Expanded(flex: 10, child: Container()),
          Text(
            "MyTransHealthGuide",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
          ),
          Expanded(flex: 1, child: Container())
        ],
      ),
    ));
  }
}
