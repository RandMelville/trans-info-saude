import 'package:app_trans_info_saude/pages/home_page.dart';
import 'package:app_trans_info_saude/pages/main_page.dart';
import 'package:app_trans_info_saude/util/primary_window.dart';
import 'package:app_trans_info_saude/widgets/custom_elevated_buttom.dart';
import 'package:flutter/material.dart';

class LoggedInPage extends StatefulWidget {
  const LoggedInPage({super.key});

  @override
  State<LoggedInPage> createState() => _LoggedInPageState();
}

class _LoggedInPageState extends State<LoggedInPage> {
  @override
  Widget build(BuildContext context) {
    return PrimaryWindow(
      components: [
        Text(
          " Seja bem vindo(a) Nome!",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xff00CFFC)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Seu app de acesso a informação de saúde",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xffF48FB1)),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        CustomElevatedButtom(
            text: "Entrar",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => MainPage())));
            },
            color: Color(0xff00CFFC),
            size: 0.3,
            text_color: Colors.white),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HomePage())));
            },
            child: Text(
              'Não é você?',
              style: TextStyle(
                  color: Color(0xff00CFFC),
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            )),
      ],
      sized_box_heigth: 0,
    );
  }
}
