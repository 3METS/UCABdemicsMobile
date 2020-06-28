import 'package:flutter/material.dart';

import 'package:ucabdemicsmobile/Views/Login/login_page.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Configuración', textScaleFactor: 1.2,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: FlatButton(
              onPressed: () {}, 
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Text('FB'),
                    radius: 25.0,
                    backgroundColor: Color(0xFFFFC526),
                    foregroundColor: Colors.white,
                  ),
                  SizedBox(width: 20.0,),
                  Text('Franklin Bello'),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Divider(indent: 25.0,endIndent: 25.0,),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            title: Text('General'),
            leading: Icon(Icons.settings),
            onTap: () {}
          ),
          Divider(indent: 25.0,endIndent: 25.0,),
          ListTile(
            title: Text('Ayuda'),
            leading: Icon(Icons.help),
            onTap: () {}
          ),
          ListTile(
            title: Text('Sobre nosotros'),
            leading: Icon(Icons.info),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Cerrar Sesión'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {

              final route = MaterialPageRoute(
                builder: ( context ) => LoginPage()
              );
              Navigator.push(context, route);

            },
          ),
        ]
      ),
    );
  }
}