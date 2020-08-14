import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class NewSolicitudePage extends StatefulWidget {
  NewSolicitudePage({Key key}) : super(key: key);

  @override
  _NewSolicitudePageState createState() => _NewSolicitudePageState();
}

class _NewSolicitudePageState extends State<NewSolicitudePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva Solicitud'),
        backgroundColor: myBlue[4],
      ),
      body: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.015),
        child:ListView(
          children: <Widget>[
            ListTile(
              title: Text('Tipo'),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
        width: MediaQuery.of(context).size.width*0.3,
        height: MediaQuery.of(context).size.height*0.05,
        child: FlatButton(
          onPressed: (){},
          child: Text('Finalizar',textScaleFactor: MediaQuery.of(context).size.width*0.002, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          color: myGreen,
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))
        )
      ),
    );
  }
}