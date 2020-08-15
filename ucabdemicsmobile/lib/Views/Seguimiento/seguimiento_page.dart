import 'package:flutter/material.dart';
import 'package:ucabdemicsmobile/Views/Seguimiento/seguimiento_item_card.dart';
import 'package:ucabdemicsmobile/Views/Seguimiento/seguimiento_provider.dart';

class SeguimientoPage extends StatefulWidget {
  SeguimientoPage({Key key}) : super(key: key);

  @override
  _SeguimientoPageState createState() => _SeguimientoPageState();
}

class _SeguimientoPageState extends State<SeguimientoPage> {

  Widget _listCards(){
    return FutureBuilder(
      future: seguimientoProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
          shrinkWrap: true,
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  _listaItems( List<dynamic> data){

    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = SeguimientoItemCard(
        subjectName: opt['nombre'],
        nrc: opt['nrc'],
        actualTema: opt['tema_actual'],
        subjectPercentaje: opt['porcentaje'],
      );

      // final widgetTemp = ListTile(
      //   title: Text(opt['nombre']),
      // );

      opciones.add(widgetTemp);
    });
    return opciones;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.04),
        children: <Widget>[
          ListTile(
            title: Text(
              'Seguimineto',
              textScaleFactor: MediaQuery.of(context).size.width*0.0055,
              style: TextStyle(
                color: Color(0xFF1D5066),
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          _listCards(),
        ],
      ),
    );
  }
}

