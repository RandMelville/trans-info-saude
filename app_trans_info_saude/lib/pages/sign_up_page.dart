import 'package:app_trans_info_saude/pages/main_page.dart';
import 'package:app_trans_info_saude/widgets/custom_elevated_buttom.dart';
import 'package:app_trans_info_saude/widgets/email_text_field.dart';
import 'package:app_trans_info_saude/widgets/name_text_field.dart';
import 'package:app_trans_info_saude/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email_controller = TextEditingController(text: '');
  TextEditingController password_controller = TextEditingController(text: '');
  TextEditingController name_controller = TextEditingController(text: '');
  TextEditingController social_name = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cadastro",
                  style: TextStyle(
                      color: Color(0xff00CFFC),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: NameTextField(
                    name_controller: name_controller,
                    color: Color(0xff66E3FF),
                    text: "Nome:",
                    size: 0.9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: NameTextField(
                    name_controller: name_controller,
                    color: Color(0xff66E3FF),
                    text: "Nome social:",
                    size: 0.9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: EmailTextField(
                    email_controller: email_controller,
                    size: 0.9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: PasswordTextField(
                    password_controller: password_controller,
                    text: "Senha:",
                    size: 0.9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: PasswordTextField(
                    password_controller: password_controller,
                    text: "Confirmar senha:",
                    size: 0.9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: CustomElevatedButtom(
                      text: "Concluir cadastro",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MainPage())));
                      },
                      color: Color(0xff00CFFC),
                      size: 0.9,
                      text_color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "MyTransHealthGuide",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
