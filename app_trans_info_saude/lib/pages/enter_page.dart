import 'package:app_trans_info_saude/pages/main_page.dart';
import 'package:app_trans_info_saude/util/primary_window.dart';
import 'package:app_trans_info_saude/widgets/custom_elevated_buttom.dart';
import 'package:app_trans_info_saude/widgets/name_text_field.dart';
import 'package:flutter/material.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  TextEditingController name_controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return PrimaryWindow(components: [
      Text(
        "Como você gostaria de ser chamado?",
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Color(0xffF48FB1)),
      ),
      SizedBox(
        height: 10,
      ),
      NameTextField(
        name_controller: name_controller,
        color: Color(0xffF48FB1),
        text: "Nome:",
        size: 0.8,
      ),
      SizedBox(
        height: 10,
      ),
      CustomElevatedButtom(
          text: "Entrar",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => MainPage())));
          },
          color: Color(0xff00CFFC),
          size: 0.3,
          text_color: Colors.white)
    ], sized_box_heigth: 30);
  }
}
