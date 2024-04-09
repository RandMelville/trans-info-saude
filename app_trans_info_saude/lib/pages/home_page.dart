import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 6, child: Container()),
              Text(
                "MyTransHealthGuide",
              ),
              Expanded(child: Container()),
              Image.asset(
                "lib/assets/images/Logo.png",
                height: 100,
              ),
              Expanded(child: Container()),
              Text(
                "Seu app de acesso a informação em saúde",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(flex: 3, child: Container()),
              Expanded(flex: 10, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
