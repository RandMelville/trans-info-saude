import 'package:app_trans_info_saude/pages/begin_page.dart';
import 'package:app_trans_info_saude/pages/find_page.dart';
import 'package:app_trans_info_saude/pages/health_professionals_page.dart';
import 'package:app_trans_info_saude/pages/offices_page.dart';
import 'package:app_trans_info_saude/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static PageController pageController = PageController();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int posicaoPagina = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(
              "lib/assets/images/Logo.png",
              height: 20,
            ),
          ),
          title: Container(
            alignment: Alignment.center,
            child: Text(
              "MyTransHealthGuide",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).textTheme.bodyMedium!.color),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => UserPage())));
                  },
                  child: Icon(Icons.person)),
            )
          ],
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: PageView(
          controller: MainPage.pageController,
          onPageChanged: (value) {
            setState(() {
              posicaoPagina = value;
            });
          },
          children: const [
            BeginPage(),
            FindPage(),
            HealthProfessionalsPage(),
            OfficesPage()
          ],
        ),
        bottomNavigationBar: NavigationBar(
            shadowColor: Colors.black,
            indicatorColor: Colors.white,
            indicatorShape: CircleBorder(),
            height: 70,
            elevation: 10,
            onDestinationSelected: (value) {
              setState(() {
                MainPage.pageController.jumpToPage(value);
              });
            },
            selectedIndex: posicaoPagina,
            destinations: const <Widget>[
              NavigationDestination(
                label: "Início",
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
              ),
              NavigationDestination(
                label: "Descobrir",
                icon: Icon(Icons.search_outlined),
                selectedIcon: Icon(Icons.search),
              ),
              NavigationDestination(
                  label: "Profissionais",
                  icon: Icon(FontAwesomeIcons.userDoctor)),
              NavigationDestination(
                  label: "Consultórios",
                  icon: Icon(FontAwesomeIcons.stethoscope)),
            ]),
        extendBody: true,
      ),
    );
  }
}
