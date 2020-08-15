import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/Solicitude/new_solicitude_page.dart';
import 'package:ucabdemicsmobile/Views/Solicitude/solicitudeTile.dart';

class SolicitudePage extends StatefulWidget {
  SolicitudePage({Key key}) : super(key: key);

  @override
  _SolicitudePageState createState() => _SolicitudePageState();
}

class _SolicitudePageState extends State<SolicitudePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.04),
        children: <Widget>[
          ListTile(
            title: Text(
              'Solicitudes',
              textScaleFactor: MediaQuery.of(context).size.width*0.0055,
              style: TextStyle(
                color: Color(0xFF1D5066),
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: 20.0),
              solicitude('Video Beam', '15/08/2020', 1),
              SizedBox(height: 20.0),
              solicitude('Salón', '15/08/2020', 2),
              SizedBox(height: 20.0),
              solicitude('Salón', '17/08/2020', 1),
              SizedBox(height: 20.0),
              solicitude('Video Beam', '22/08/2020', 2),
              SizedBox(height: 20.0),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          final route = MaterialPageRoute(
                builder: ( context ) => NewSolicitudePage()
              );
              Navigator.push(context, route);
        },
        backgroundColor: Colors.yellow[700],
      ),
    );
  }
}