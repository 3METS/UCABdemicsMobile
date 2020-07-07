import 'package:flutter/material.dart';
import '../Constants/constats.dart';
import '../../Views/class_plan/class_plan.dart';
import '../../Views/MainMenu/main_menu_page.dart';
import '../../Views/Settings/setting_page.dart';

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationState();
  }
}

class _NavigationState extends State<Navigation> {

  final tabs = [
    Mainmenupage(),
    Center(child: Text('Seguimiento')),
    Center(child: Text('Horario')),
    Center(child: Text('Notificaciones')),
    SettingPage()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: (MediaQuery.of(context).size.height)*0.1,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          iconSize: 30.0,
          backgroundColor: myGreen,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text('Planes de Clase'),
              backgroundColor: myGreen,
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_open),
              title: Text('Seguimiento'),
              backgroundColor: myGreen,
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              title: Text('Horario'),
              backgroundColor: myGreen,
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              title: Text('Notificaciones'),
              backgroundColor: myGreen,
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Ajustes'),
              backgroundColor: myGreen,
              )
          ],
          onTap: (index) {
            setState((){
              _currentIndex = index;
            });
          },
        ),
      )
    );
  }
}
