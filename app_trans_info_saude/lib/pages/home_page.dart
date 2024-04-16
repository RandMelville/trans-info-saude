import 'package:app_trans_info_saude/pages/enter_page.dart';
import 'package:app_trans_info_saude/pages/logged_in_page.dart';
import 'package:app_trans_info_saude/pages/sign_in_page.dart';
import 'package:app_trans_info_saude/pages/sign_up_page.dart';
import 'package:app_trans_info_saude/util/primary_window.dart';
import 'package:app_trans_info_saude/widgets/custom_elevated_buttom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PrimaryWindow(
      components: [
        CustomElevatedButtom(
          text: 'Entrar',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => EnterPage())));
          },
          text_color: Colors.white,
          color: Color(0xff00CFFC),
          size: 0.8,
        ),
        CustomElevatedButtom(
          text: 'Quer criar uma conta?',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => SignUpPage())));
          },
          text_color: Colors.white,
          color: Color(0xffF48FB1),
          size: 0.8,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SingInPage())));
            },
            child: Text(
              'Já tenho uma conta',
              style: TextStyle(
                  color: Color(0xffF48FB1),
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            )),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => LoggedInPage())));
            },
            child: Text(
              'teste já logado',
              style: TextStyle(
                  color: Color(0xffF48FB1),
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            )),
      ],
      sized_box_heigth: 30,
    );
  }
}
