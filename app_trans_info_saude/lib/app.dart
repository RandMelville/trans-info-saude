import 'package:app_trans_info_saude/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = TextTheme(
        bodyMedium: GoogleFonts.aBeeZee(
      color: Color(0xffFFABBA),
    ));
    return MaterialApp(
      title: 'My Trans Health Guide',
      theme: ThemeData(
        textTheme: textTheme,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pink, background: const Color(0xffFBD9E4)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
