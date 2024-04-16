import 'package:app_trans_info_saude/pages/main_page.dart';
import 'package:app_trans_info_saude/util/primary_window.dart';
import 'package:app_trans_info_saude/widgets/custom_elevated_buttom.dart';
import 'package:app_trans_info_saude/widgets/email_text_field.dart';
import 'package:app_trans_info_saude/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  TextEditingController email_controller = TextEditingController(text: "");
  TextEditingController password_controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return PrimaryWindow(
      components: [
        EmailTextField(
          email_controller: email_controller,
          size: 0.8,
        ),
        SizedBox(
          height: 10,
        ),
        PasswordTextField(
          password_controller: password_controller,
          text: "Senha:",
          size: 0.8,
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
            size: 0.8,
            text_color: Colors.white)
      ],
      sized_box_heigth: 15,
    );
  }
}
