import 'package:app_trans_info_saude/widgets/articles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  TextEditingController search_controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 45,
              padding: EdgeInsets.only(left: 24, right: 24),
              child: TextField(
                controller: search_controller,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    filled: true,
                    fillColor: Color(0xffFFABBA),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Buscar',
                    prefixIcon:
                        InkWell(onTap: () {}, child: Icon(Icons.search)),
                    suffixIcon: InkWell(
                        onTap: () {},
                        child: Icon(
                          FontAwesomeIcons.x,
                          size: 15,
                          color: Colors.black,
                        ))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Descubra mais:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
          Articles(),
        ],
      ),
    );
  }
}
