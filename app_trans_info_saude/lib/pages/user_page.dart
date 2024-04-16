import 'package:app_trans_info_saude/pages/edit_profile.dart';
import 'package:app_trans_info_saude/util/primary_user_page.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return PrimaryUserPage(
      fields: [
        UserAccountsDrawerHeader(
          margin: EdgeInsets.all(8),
          accountName: Text(
            "Seu nome",
            style: TextStyle(
                color: Color(0xffFFABBA),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          accountEmail: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => EditProfile())));
            },
            child: Text(
              "Editar perfil",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          currentAccountPicture: CircleAvatar(
            child: Icon(
              Icons.person,
              size: 60,
              color: Color(0xffFFABBA),
            ),
            backgroundColor: Colors.white,
          ),
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.background),
        )
      ],
    );
  }
}
