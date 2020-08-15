import 'package:flutter/material.dart';
import '../../Views/Seguimiento/seguimiento_page.dart';
import '../../Views/Solicitude/solicitude_page.dart';
import 'package:ucabdemicsmobile/Views/horario/horario.dart';
import '../Constants/constants.dart';
import '../../Views/class_plan/class_plan.dart';
import '../../Views/Settings/setting_page.dart';

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationState();
  }
}

class _NavigationState extends State<Navigation> {

  final tabs = [
    ClassPlan(),
    SeguimientoPage(),
    Horario(),
    SolicitudePage(),
    SettingPage()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: (MediaQuery.of(context).size.height)*0.102,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          iconSize: 30.0,
          backgroundColor: myGreen,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: false,
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
              title: Text('Solicitudes'),
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
